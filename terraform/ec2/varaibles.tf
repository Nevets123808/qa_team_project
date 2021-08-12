variable "ami" {
    description = "Machine Image"
}

variable "instance_size" {
    description = "Machine Size"
}

variable "subnet_id" {
  description = "Subnet ID for EC2"
}

variable "name" {
  description = "Name of EC2 Instance"
  default     = "QA_Final_Project_Manager_Node"
}

variable "enable_public_ip" {
  description = "Enable if EC2 instace should have public ip address"
  default     = true
}

variable "vpc_security_group_ids" {
  description = "VPC Security Group IDs"
}

variable "region" {
    description = "Instance Region"
}