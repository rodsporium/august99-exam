# august99-exam

Contains the files needed for august99 tech exam. This creates a webserver in AWS EC2 via terraform. It has two scripts "deploy.sh" which creates the resources and "destroy.sh" which deletes resources.

To start, install terraform. You can use this guide https://learn.hashicorp.com/tutorials/terraform/install-cli or use the steps below if running Centos/RHEL
1. sudo yum install -y yum-utils
2. sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
3. sudo yum -y install terraform

Current terraform version: Terraform v0.14.6

The scripts will ask for your programmatic AWS credentials. Please prepare them. The deploy.sh script will create a t2.micro Linux machine with Httpd on default VPC in Singapore region.

Use the IP address provided by the script in "Output" section to access the instance.

