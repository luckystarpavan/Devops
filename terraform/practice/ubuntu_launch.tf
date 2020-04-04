provider "aws" {
#   profile     = "default"
   region       = "us-east-1"
   version = "~> 2.0"


   access_key   = "AKIA25GAXFKWGC4SQ2VA"
   secret_key   =  "Blo9cgj+yAzbVEAloXqBUqgpg5tw/OvNFLk01Rpk"

}

resource "aws_instance" "example" {
   ami          = "ami-07ebfd5b3428b6f4d"
   instance_type = "t2.micro"
   }




################################################################
#by adding below this ( key_name = "MyVPC-DFW-office" ) in resource, we will select the particular key pair for an instance.

 
