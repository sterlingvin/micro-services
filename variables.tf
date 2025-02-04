variable "aws_region" {
    description = "value of the region"
    type = string
    default = "ca_cental-1"
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string
    default = "10.0.0.0/16"
  
}

variable "public_subnet_cidr" {
    description = "value of the public subnet CIDR block"
    type = string
    default = "10.0.1.0/24"
}
  
variable "private_subnet_cidr"{
    description = "value of the private subnet CIDR block"
    type = string
    default = "10.0.2.0/24"
}
  
variable "ecr_repo_name"{
    description = "value of the ECR repository name"
    type = list(string)
    default = ["user-service", "product-service", "order-service"]
}
  