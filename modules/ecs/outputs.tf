output "ecs_service_endpoint" {
  value = aws_ecs_service.service.name
}