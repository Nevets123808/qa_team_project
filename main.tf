provider "aws" {
    region = var.region
    version = "~> 2.7"
    shared_credentials_file = "~/.aws/credentials"
}

module "ec2" {
    source = "./ec2"
    #Put Variables here
    ami = var.ami
    instance_size = var.instance_size
    region = var.region
}

module "eks" {
    source = "./eks"
    #Put Variables here
    eks_role_arn = module.iam.eks_role_arn
    node_role_arn = module.iam.node_role_arn
    public_subnet_id = module.public_subnet_id
    private_subnet_id = module.private_subnet_id
}

module "iam" {
    source = "./iam"
    #Put Variables here
}

module "igw" {
    source = "./igw"
    #Put Variables here
}

module "sg" {
    source = "./sg"
    #Put Variables here
}

module "subnet" {
    source = "./subnet"
    #Put Variables here
}

module "vpc" {
    source = "./vpc"
    #Put Variables here
}