output "lambda_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.hcl_hackathon_function.arn
}
