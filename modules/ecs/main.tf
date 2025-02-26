resource "aws_ecs_cluster" "cluster" {
  name = "micro-service-cluster"
}

resource "aws_ecs_task_definition" "task" {
  family = "micro-service-task"
  container_definitions = <<DEFINITION
  [
  {
  "name": "micro-service",
  "image": "nginx",
  "cpu": 128,
  "memory": 128,
  "essential": true,
  "portMappings": [
  {
    "containerPort": 3000,
    "hostPort": 3000
  }
   ]
  }
]
DEFINITION
}

resource "aws_ecs_service" "service" {
  name = "user-service"
  cluster = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count = 1
  launch_type = "EC2"  # or "FARGATE"
  network_configuration {
    subnets = module.vpc.public_subnet_ids
    security_groups = [aws_security_group.ecs_service.id]
  }
  depends_on = [aws_ecs_task_definition.task] 
}