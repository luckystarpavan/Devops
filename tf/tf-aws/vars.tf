#Terraform supports dirrerent types of variables--> Strings, List, Map
variable "ami" {
  type = "map"

  default = {
    #	us-east-1 = "ami-07ebfd5b3428b6f4d" 
    #	us-east-1 = "ami-0fc61db8544a617ed"

    us-east-1 = "ami-0c322300a1dd5dc79"
    us-west-2 = "ami-03ba3948f6c37a4b0"

  }
}
variable "instance_type" {
  default = "t2.micro"
}
variable "aws_region" {
  default = "us-west-2"
}


