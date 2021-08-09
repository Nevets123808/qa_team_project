variable "ami"{
    default = "ami-0194c3e07668a7e36"
    description = "Manager VM ami"
}

variable "region" {
    default = "eu-west-2"
    description = "Manager VM region"
}

variable "instance_size"{
    default = "t2.micro"
    description = "Manager VM Size"
}