resource "aws_subnet" "public_subnet" {
  vpc_id =  "${var.vpc_id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    "kubernetes.io/cluster/syed_cluster" = "shared"
    Name = "${var.environment}-${var.region}-Public-Subnet"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id =  "${var.vpc_id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    "kubernetes.io/cluster/syed_cluster" = "shared"  
    Name = "${var.environment}-${var.region}-Private-Subnet"
  }
}