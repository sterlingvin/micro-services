resource "aws_api_gateway_rest_api" "api" {
    name = "microservices-api"

  
}


resource "aws_api_gateway_resource" "resource" {
    rest_api_id = aws_api_gateway_rest_api.api.id
    parent_id = aws_api_gateway_rest_api.api.root_resource_id
    path_part = "users"
  
}

resource "aws_api_gateway_method" "method" {
    rest_api_id = aws_api_gateway_rest_api.api.id
    resource_id = aws_api_gateway_resource.resource.id
    http_method = "GET"
    authorization = "NONE"
  
}

resource "aws_api_gateway_integration" "integration" {
    rest_api_id = aws_api_gateway_rest_api.api.id
    resource_id = aws_api_gateway_resource.resource.id
    http_method = aws_api_gateway_method.method.http_method
    integration_http_method = "GET"
    type = "HTTP_PROXY"
    uri = var.ecs_service_endpoint
  
}

