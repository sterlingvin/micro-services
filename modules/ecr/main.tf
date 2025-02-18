resource "aws_ecr_repository" "repo" {
  for_each = toset(var.ecr_repo_name)
  name = each.value
}

