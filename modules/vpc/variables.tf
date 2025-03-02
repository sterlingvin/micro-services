# variable "vpc_cidr" {
#   description = "CIDR block for the VPC"
#   type = string
# }

# variable "public_subnet_cidr" {
#   description = "value of the public subnet CIDR block"
#   type = string     
  
# }

# variable "private_subnet_cidr"{
#   description = "value of the private subnet CIDR block"
#   type = string     
  
# }

# Variables
variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "availability_zone_public" {
  type = string
}

variable "availability_zone_private" {
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

