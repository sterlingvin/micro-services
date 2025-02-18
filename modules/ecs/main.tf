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
}