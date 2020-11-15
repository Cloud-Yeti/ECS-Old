# Cloudyeti-ECS-Series

#### Getting Started
  * let's build the docker image locally
    * docker-compose up -d
  * Let's create a repository in ECR
    * aws ecr create-repository --region <region-name> --repository-name <repository-name>

#### Docker useful commands

# List all containers (add -a flag a last of below command to see info about stopped container)
  * docker ps

# List all the images
  * docker images

# Stop all containers
  * docker stop $(docker ps -aq)

# Remove all containers
  * docker rm $(docker ps -aq)

# deleting - all stopped containers - all networks not used by at least one container - all dangling images - all dangling build cache
  * docker system prune

# delete all unused images and volumes
  * docker system prune --all

