env_file ?= default.env
region ?= us-east-1
account_id ?= 222385317864

ecr-repo:
	aws ecr create-repository --region $(region) --repository-name cloudyeti/nginx

push-image:
	aws --region $(region) ecr get-login-password | docker login --password-stdin --username AWS $(account_id).dkr.ecr.$(region).amazonaws.com
	docker-compose --env-file=$(env_file) push

app-up:
ifdef app
	docker-compose --env-file=$(env_file) up --build -d $(app)
else
	docker-compose --env-file=$(env_file) up --build -d
endif

app-down:
ifdef app
	docker-compose --env-file=$(env_file) stop $(app)
else
	docker-compose --env-file=$(env_file) down
endif
