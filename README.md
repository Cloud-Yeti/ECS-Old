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

## Amazon ECS
  * Amazon Elastic Container Service (Amazon ECS) is a highly scalable, high-performance container orchestration service that supports Docker containers and allows you to easily run and scale containerized applications on AWS.

#### ECS Lauch Types
  * EC2
  * FARGATE: with fargate, we can deploy and manage container without having to provision or manage EC2 instances at all.

#### What are Services and Tasks
  * Services: Services supervise tasks, it's job is to keep your task running. If task get's stopped, service will bring it back.
  * Tasks: It is the wrapper to run your container. We specify our container configuration definition including cpu, ram, image, etc, in task definitions.

#### Service Discovery
  * ECS Service Discovery is powered by Route 53 (AWS DNS Service). ECS updates a service registry provided by Route 53 based on task registration and health checks. Route 53 responds to DNS queries made by your containers with IP address and port using Multivalue Answer Routing. So, as the task scale up and down, the records for ip address in Route 53 are also updated.
  * Service Discovery uses AWS Cloud Map API actions to manage HTTP and DNS namespaces for your Amazon ECS services.
  * Service Discovery is crutial for all sorts of use case for managing microservices including communication between services in ECS as well as for Blue/Green deployment. 


