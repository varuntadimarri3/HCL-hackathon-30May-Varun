output "lambda_sg_id" {
  description = "The ID of the Lambda security group"
  value       = aws_security_group.lambda_sg.id
}
