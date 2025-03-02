variable "aws_region" {
  description = "value of the region"
  type        = string
  default     = "ca-central-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

}

variable "public_subnet_cidr" {
  description = "value of the public subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "value of the private subnet CIDR block"
  type        = string
  default     = "10.0.2.0/24"
}

variable "ecr_repo_name" {
  description = "value of the ECR repository name"
  type        = list(string)
  default     = ["user-service", "product-service", "order-service", "payment-service"]
}


variable "ecr_repo_url" {
  description = "URL of the ECR repository"
  type        = string
  default     = "851725517396.dkr.ecr.us-east-1.amazonaws.com/user-service"

}

variable "availability_zone_public" {
  type    = string
  default = "ca-central-1a" # Add default value   
  
}

variable "availability_zone_private" {
  type    = string
  default = "ca-central-1b" # Add default value   
  
} 



variable "nat_gateway_id" {
  type = string   
  
}

variable "public_route_cidr" {
  type = string   
  default = "0.0.0.0/0"
}

variable "private_route_cidr" {
  type = string   
  default = "0.0.0.0/0"
}

