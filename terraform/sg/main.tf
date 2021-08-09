provider "aws" {
   region = var.region
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow http inbound/outbound traffic"
  vpc_id      = var.vpc

  ingress = [
    {
      description      = "http to VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]
  egress = [
    {
      description      = "http from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]


  tags = {
    Name = "allow_http"
  }
}
