# Jenkins-Ansible-Terraform-AKS

The goal of this project is to provide a full-fledged CI/CD environment in as few steps as possible
Deploy Jenkins to regular virtual machines or to Kubernetes clusters. 
Prod and Test environment.

Tasks

1. Deploys a Linux VM 
2. Deploy two azure kubernetes clusters(test/dev) to host application 
3. Generate two kube-config files locally to connect to our cluster

Tasks done with Terraform.
Commands to run:
terraform init
terraform apply

Ansible configures the Linux VM to deploy a Jenkins server for automated deployments

After Jenkins installation 

Create a Jenkinsfile to build the Backend and Frontend app automatically

Deploy it to an environment

Move the Jenkins server to a separate virtual network and configure network peering between your app network and Jenkins network

Deploy at least two Jenkins Agents

Configure a job for manual deployment to an environment

Configure Jenkins to use Azure AD for authentication

Ansible has 3 roles to install and configure docker, kubernetes and jenkins.