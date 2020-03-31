#first to create a user in AWS and you will get a ACCESS and SECRET KEYS 
#just to launch the instance.

provider "aws" {
  region = "us-east-1"
  access_key = "AKIA25GAXFKWGC4SQ2VA"
  secret_key =  "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"
}

resource "aws_instance" "myFirstEc2" {
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
#    tag {
#	  Name = "terraform-myFirstEC2"
#	}
}


