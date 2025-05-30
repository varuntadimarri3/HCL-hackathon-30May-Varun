resource "aws_lambda_function" "hcl_hackathon_function" {
  function_name = var.lambda_name
  role          = var.lambda_role_arn
  package_type  = "Image"
  image_uri     = var.image_uri
  timeout       = 10
  memory_size   = 512
  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }
  tracing_config {
    mode = "Active"
  }
}
