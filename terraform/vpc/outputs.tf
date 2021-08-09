output "vpc_id" {
    value = aws_vpc.main.id
    description = "Id for main VPC"
}