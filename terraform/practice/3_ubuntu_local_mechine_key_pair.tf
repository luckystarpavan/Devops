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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDg8lTj/+I6jw4qHIcoxpzClj20RKuFyxC8Cb/j3xpy6Vj+YmAo8NID/RKQ2nLOwHSuGroelmceKhF44/1z7TIrgo9lq4idsvoGCmmQlWiuUE9wHeCjnML2+80IhuSgAg6acih6Xxq47FDLp2WOBZlL6mL1eE1SiwdDPG8Tpo9/W3fdG03m7nDF3g4ZqAdAQ/w8JkMvkia4pqJ4+sBU6iGehyZbzflWGeNSSCGnb+KAYaPOc23stqaQy/yOca5/ERgNHqf23staBcrrooKsSNxGHSBAH3GZ0XQ0D9m06Oxw3BuJTSqyjGkZWTdheZl6vAqYW76yCXwiY1y7CpDuv6ml ubuntu@ip-192-168-10-43"
}

resource "aws_instance" "example" {
   ami           = "ami-07ebfd5b3428b6f4d"
   instance_type = "t2.micro"
   key_name      = "${aws_key_pair.tf_demo.key_name}"
   
   tags =  {
     Name = "Terraform_11"
       }
}



