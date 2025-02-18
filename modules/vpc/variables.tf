variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type = string
}

variable "public_subnet_cidr" {
  description = "value of the public subnet CIDR block"
  type = string     
  
}

variable "private_subnet_cidr"{
  description = "value of the private subnet CIDR block"
  type = string     
  
}

