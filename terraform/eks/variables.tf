variable "eks_role_arn"{
    default = "arn:aws:iam::830645951449:role/EKSClusterRole"
}

variable "node_role_arn"{
    default = "arn:aws:iam::830645951449:role/EKSClusterRole"
}
variable "public_subnet_id"{
    default = "subnet-14bfc56e"
}

variable "private_subnet_id"{
    default = "subnet-76fb733a"
}