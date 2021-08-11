variable "ami"{
    default = "ami-022b8e5db7bea9b16"
    description = "Manager VM ami"
}

variable "region" {
    default = "eu-west-2"
    description = "AWS region"
}

variable "instance_size"{
    default = "t2.micro"
    description = "Manager VM Size"
}

variable "environment"{
    default = "Deployment"
    description = "Incase we need multiple environments/vpcs in the future"
}