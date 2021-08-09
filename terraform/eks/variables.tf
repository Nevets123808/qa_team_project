variable "eks_role_arn"{
    default = "arn:aws:iam::830645951449:role/aws-service-role/eks.amazonaws.com/AWSServiceRoleForAmazonEKS"
}

variable "node_role_arn"{
    default = "arn:aws:iam::830645951449:role/aws-service-role/eks-nodegroup.amazonaws.com/AWSServiceRoleForAmazonEKSNodegroup"
}
variable "public_subnet_id"{
    default = "subnet-14bfc56e"
}

variable "private_subnet_id"{
    default = "subnet-76fb733a"
}