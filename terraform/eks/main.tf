resource "aws_eks_cluster" "DeploymentCluster" {
    name = "deploymentcluster"
    # role_arn = var.eks_role_id
    vpc_config {
        subnet_ids = [var.public_subnet_id, var.private_subnet_id]
    }
}

resource "aws_eks_node_group" "DeploymentNodes"{
    
}