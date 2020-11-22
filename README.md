# example-angular-project-deploy
I'm using terraform v0.12.29 for this project
This repo holds the terraform and docker-compose file to spin up a docker application in an AWS auto-scaling group (ASG) with scalable EC2 instances using Terraform (infrastructure as code).

**variables.tf** - variables used within main.tf and cloud_init.tf

**startup.yml.tpl** - cloud-init template with [commands to install docker](https://docs.docker.com/engine/install/ubuntu/) as well as the commands to install and spin up docker-compose.

**docker-compose.yml** - docker-compose file with variables that will be populated by cloud_init.tf

**cloud_init.tf** - renders the template into data that can be used with terraform

**main.tf** - details creating the loading configuration for the ASGs and networking


