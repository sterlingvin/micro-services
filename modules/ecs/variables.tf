variable "vpc_id" {
  description = "value of the VPC ID"
  type = string
}

variable "public_subnet_ids" {
  description = "value of the public subnet ID"
  type = list(string)
  
}

variable "private_subnet_ids" {
  description = "value of the private subnet ID"
  type = list(string)
  
}

variable "ecr_repo_url"{
  description = "URL of the ECR repository"
  type = string
}
