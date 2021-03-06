#!/bin/bash

#Input AWS access that has full admin role or at least can create ec2 services
read -p "AWS Access Key: " aws_access_key
read -p "AWS Secret Key: " aws_secret_key

export AWS_ACCESS_KEY_ID=$aws_access_key
export AWS_SECRET_ACCESS_KEY=$aws_secret_key

#Run terraform destroy
echo "Running terraform destroy..."
terraform destroy -auto-approve
