provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "packer" {
  ami = "ami-5df2d34a"
  instance_type = "t2.micro"
  tags {
    Name = "Custom-AMI-Packer"
  }
}
