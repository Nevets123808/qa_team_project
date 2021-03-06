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
    subnet_id = module.subnet.public_subnet_id
    vpc_security_group_ids = [module.sg.sg_id]
    # associate_public_ip_address = true
}

module "eks" {
    source = "./eks"
    #Put Variables here
    eks_role_arn = module.iam.cluster_iam_role
    node_role_arn = module.iam.node_iam_role
    public_subnet_id = module.subnet.public_subnet_id
    private_subnet_id = module.subnet.private_subnet_id
}

module "iam" {
    source = "./iam"
    #Put Variables here
}

module "igw" {
    source = "./igw"
    #Put Variables here
    vpc_id = module.vpc.vpc_id
    subnet_1 = module.subnet.public_subnet_id
    subnet_2 = module.subnet.private_subnet_id
}

module "sg" {
    source = "./sg"
    #Put Variables here
    vpc_id = module.vpc.vpc_id
    region = var.region
}

module "subnet" {
    source = "./subnet"
    #Put Variables here
    vpc_id = module.vpc.vpc_id
    region = var.region
    environment = var.environment
}

module "vpc" {
    source = "./vpc"
    #Put Variables here
    region = var.region
    environment = var.environment
}