provider "aws" {
    region = var.aws_region
}

module "vpc" {
    source = "./modules/vpc"

    vpc_cidr = var.vpc_cidr
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
}
  
module "ecr" {
    source = "./modules/ecr"

    ecr_repo_name = var.ecr_repo_name
}

module "ecs" {
    source = "./modules/ecs"

    vpc_id = module.vpc.vpc_id
    public_subnet_ids = module.vpc.public_subnet_ids
    private_subnet_ids = module.vpc.private_subnet_ids
    ecr_repo_url = module.ecr.ecr_repo_url
}

module "api_gateway" {
    source = "./modules/api_gateway"

    ecs_service_endpoint = module.ecs.ecs_service_endpoint

}

