output "ecr_repo_url" {
  value = aws_ecr_repository.repo["user-service"].repository_url
}

