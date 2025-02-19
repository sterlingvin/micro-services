output "vpc_id" {
  description = "value of the VPC ID"
  value       = module.vpc.vpc_id
}

output "ecr_repo_url" {
  description = "value of the ECR repository URL"
  value       = module.ecr.ecr_repo_url

}

output "ecs_service_endpoint" {
  description = "value of the ECS service endpoint"
  value       = module.ecs.ecs_service_endpoint

}