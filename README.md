# Cloudyeti-ECS-Series

#### Getting Started
  * let's build the docker image locally
    * make app-up
    * make app-up app=nginx  (will make only nginx up)
  * Let's create a repository in ECR
    * make ecr-repo
  * Let's push our image to ECR
    * make push-image


## Docker useful commands

#### List all containers (add -a flag a last of below command to see info about stopped container)
  * docker ps

#### List all the images
  * docker images

#### Stop all containers
  * docker stop $(docker ps -aq)

#### Remove all containers
  * docker rm $(docker ps -aq)

#### deleting - all stopped containers - all networks not used by at least one container - all dangling images - all dangling build cache
  * docker system prune

#### delete all unused images and volumes
  * docker system prune --all

