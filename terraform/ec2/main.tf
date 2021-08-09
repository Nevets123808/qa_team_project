provider "aws" {
   region = var.region
}

resource "aws_instance" "node" {
    ami = var.ami
    instance_type = var.instance_size
}