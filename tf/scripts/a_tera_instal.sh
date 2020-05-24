#https://learn.hashicorp.com/terraform/getting-started/build --> practiceeeee
#https://www.terraform.io/docs/providers/aws/r/s3_bucket.html --> ref.

##-----------------------------
##  Terraform: Installation  ##
##-----------------------------
## Create an "UBUNTU" instance and an IAM user with admin access
## and programettic access (Get the Access key and Secret Key)
## Connect to the AWS instance

#!/bin/bash/

cd /home/ubuntu
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
sudo apt-get install unzip
unzip terraform_0.12.24_linux_amd64.zip

mkdir downloads 
sudo mv terraform /home/ubuntu/downloads && rm terraform_0.12.24_linux_amd64.zip



###this will work for Ubuntu
######## add the below line (export PATH="$PATH:~/downloads") in the .profile 
./profile >> export PATH="$PATH:~/downloads"
source ~/.profile

terrafrom --version



################################################################
#--------------------------------------------------------------
provider "aws" {
	access_key = "access_key" 
	secret_key = "secret_key"
	REGION 	   = "us-east-1"
}
resource "aws_instance" "example" {
	ami	      = "ws-234j56554"
	instance_type = "t2.micro"
	
}
