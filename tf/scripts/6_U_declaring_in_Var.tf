###############################################################################
#---------------------------save as var.tf -----------------------------------#
#Terraform supports dirrerent types of variables--> Strings, List, Map

variable "ami"{
   type = "map"

    default = {
        us-east-1 = "ami-07ebfd5b3428b6f4d"
        us-east-1 = "ami-0fc61db8544a617ed"
        us-east-1 = "ami-0c322300a1dd5dc79"

        us-west-2 = "ami-03ba3948f6c37a4b0"

   }
}
variable "instance_type"{
   default = "t2.micro"
}
variable "aws_region"{
    default = "us-east-1"
}
################################################################################
#---------------------------main.tf--------------------------------------------#
provider "aws" {
   region = "us-east-1"
   version = "~> 2.0"
   access_key = "AKIA25GAXFKWGC4SQ2VA"
   secret_key = "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"
   #lock=false"
}
resource "aws_key_pair" "tf_demo_1" {
        key_name = "tf_demo_1"
        public_key = "${file("tf-demo.pub")}"
}
resource "aws_instance" "my_instance" {
   ami = "${lookup(var.ami,var.aws_region)}"
   instance_type = "${var.instance_type}"
   key_name = "${aws_key_pair.tf_demo_1.key_name}"
#  user_data= "${file("install_httpd.sh")}"
       tags = {
       Name = "Terraform_11"
       Batch = "7AM"
       }
}
