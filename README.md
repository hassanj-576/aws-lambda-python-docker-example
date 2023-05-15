# python-docker-example
A simple Repo that has an example docker file along with code that can be used to deploy lambda functions

# Setup

To deploy this code to Lambda, you will need to do the following 

## Create an ECR Repo 
Create an ECR repo, lets say by the name of `docker-python-lambda-test`

## Build Docker Image

You can build the docker image using the following command 

`docker build -t docker-python-lambda-test .`

## Login to AWS 

Login to aws ecr using the command 

`aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account_id>.dkr.ecr.<region>.amazonaws.com`

## Push To ECR 

`docker tag docker-python-lambda-test:latest <account_id>.dkr.ecr.<region>.amazonaws.com/docker-python-lambda-test:latest`
`docker push <account_id>.dkr.ecr.<region>.amazonaws.com/docker-python-lambda-test:latest`

## Deploy Lambda Function 

Go to lambda, create a new lambda function, select Container image and select the image we pushed above as the image to create a lambda from it 