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


#### Deploying Docker Containers on AWS
  * https://docs.docker.com/engine/context/ecs-integration/

## Deploy Containers to AWS using Docker ECS Plugin / Docker Compose CLI
  * Referral links: 
    * https://www.docker.com/blog/from-docker-straight-to-aws/
    * https://github.com/docker/compose-cli

  * First things first, go to this link https://docs.docker.com/engine/context/ecs-integration/#prerequisites and download the docker version that supports integration with ECS by clicking on Download for Mac or Download for Windows depending on your OS, and if you are using docker desktop, you can enable Compose CLI support on Docker Desktop which you can find on docker settings.
  * Second step is to, enable Amazon ECS ARN and resource ID settings for container instance, service and task and save it.
    * https://console.aws.amazon.com/ecs/home?region=us-east-1#/settings
  * Third step, create a new ecs context. See below:

#### Create ecs context for aws
```
docker context create ecs aws
Select AWS Profile new profile
profile name default
Region us-east-1
Enter credentials: N
Successfully created ecs context "aws"
```
#### Docker context (for working both in local and remote(forex: aws))
```
docker context ls --> to see list of context
docker context use < CONTEXT > --> for selecting the context
```
#### To specify your compose file use --file flag (otherwise it seeks for docker-compose.yml file by default) and to specify your cluster name use "--project-name" flag (otherwise it will take cluster with the name of present working directory). see below example:
```
docker compose --file ecs-compose.yml --project-name wordpress up
```
