# Example Angular Project Deploy
1. [Example Angular Project - Docker Example](https://github.com/DimsumPanda/example-angular-project-build)
2. [Example Angular Project - Create Deployment Objects with Terraform and Docker-Compose](https://github.com/DimsumPanda/example-angular-project-deploy) (you are here)
3. [Example Angular Project - Build with Jenkinsfile](https://github.com/DimsumPanda/example-angular-project-build)

## Terraform
I'm using terraform v0.12.29 for this project
This repo holds the terraform and docker-compose file to spin up a docker application in an AWS auto-scaling group (ASG) with scalable EC2 instances using Terraform (infrastructure as code).

1. Please take a look at main.tf and update the s3 bucket and region information for the tfstate file storage.
2. Also review variables.tf, you can replace the sshkey_name's default value with a key-pair that you may have generated on AWS.
3. After reviewing the details, please proceed to the [build example](https://github.com/DimsumPanda/example-angular-project-build).

## File Details

**variables.tf** - variables used within main.tf and cloud_init.tf

**startup.yml.tpl** - cloud-init template with [commands to install docker](https://docs.docker.com/engine/install/ubuntu/) as well as the commands to install and spin up docker-compose.

**docker-compose.yml** - docker-compose file with variables that will be populated by cloud_init.tf

**cloud_init.tf** - renders the template into data that can be used with terraform

**main.tf** - details creating the loading configuration for the ASGs and networking


