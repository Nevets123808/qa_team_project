variable "ami"{
    default = "ami-0194c3e07668a7e36"
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