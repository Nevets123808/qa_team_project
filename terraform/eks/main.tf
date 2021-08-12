
resource "aws_eks_cluster" "DeploymentCluster" {
    name = "deploymentCluster"
    role_arn = var.eks_role_arn
    vpc_config {
        subnet_ids = [var.public_subnet_id, var.private_subnet_id]
    }
}

resource "aws_eks_node_group" "DeploymentNodes"{
    cluster_name = "deploymentCluster"
    node_group_name = "deploymentNodeGroup"
    node_role_arn = var.node_role_arn
    subnet_ids = [var.public_subnet_id, var.private_subnet_id]
    instance_types = ["t2.medium"]

    scaling_config {
        #We might want to make these variables so they can be set at top-level
        desired_size = 3
        max_size = 5
        min_size = 1
    }
    depends_on = ["aws_eks_cluster.DeploymentCluster"]
}