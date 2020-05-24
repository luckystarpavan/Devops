resource "aws_key_pair" "tf_demo_1" {
  key_name   = "tf_demo_1"
  public_key = "${file("tf-demo.pub")}"
}
resource "aws_instance" "my_instance" {
  ami           = "${lookup(var.ami, var.aws_region)}"
  instance_type = "${var.instance_type}"

  key_name = "${aws_key_pair.tf_demo_1.key_name}"
  #  user_data = "${file("install_httpd.sh")}"
  tags = {
    Name  = "Terraform_11"
    Owner = "TF_OWNER"
  }
}

output "instance_ips" {
  value = "${aws_instance.my_instance.*.public_ip}"
}
