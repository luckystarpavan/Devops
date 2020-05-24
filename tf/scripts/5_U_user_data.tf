
provider "aws" {
#  profile      = "default"
   region = "us-east-1"
   version = "~> 2.0"
   access_key = "AKIA25GAXFKWGC4SQ2VA"
   secret_key = "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"
   #lock=false"
}
resource "aws_key_pair" "tf_demo_1" {
        key_name = "tf_demo_1"
        #public key is in this file --> tf-demo.pub
        #######  Insted of giving code, we can give the "tf-demo.pub" FILE PATH DIRECTLY
        public_key = "${file("tf-demo.pub")}"
}
resource "aws_instance" "example" {
  ami = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"

  key_name = "${aws_key_pair.tf_demo_1.key_name}"
#need to give commands in the file --> install_httpd.sh

  user_data= "${file("install_httpd.sh")}"
       tags = {
       Name = "Terraform_11"
       Batch = "7AM"
       }
}
resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}
