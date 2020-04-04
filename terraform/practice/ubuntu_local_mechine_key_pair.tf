provider "aws" {
#  profile      = "default"
   region       = "us-east-1"
   version      = "~> 2.0"
   access_key   = "AKIA25GAXFKWGC4SQ2VA"
   secret_key   =  "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"

}

#Creating a new KEY_PAIR in local mechine while launching the instance
#run this in local mechine --> #ssh-keygen -f tf-demo 
#we will get public ( "tf-demo.pub"  ) and private ("tf-demo")

resource "aws_key_pair" "tf_demo" {
  key_name   = "tf_demo"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDg8lTj/+I6jw4qHIcoxpzClj20RKuFyxC8Cb/j3xpy6V$
}

resource "aws_instance" "example" {
   ami           = "ami-07ebfd5b3428b6f4d"
   instance_type = "t2.micro"
   key_name      = "${aws_key_pair.tf_demo.key_name}"
#   tags {
#     Name = "Terraform"
#     Batch = "7AM"
#       }

}



