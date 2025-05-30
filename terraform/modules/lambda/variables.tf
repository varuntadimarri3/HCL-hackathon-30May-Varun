variable "lambda_name" {
  description = "Lambda function name"
  type        = string
}

variable "image_uri" {
  description = "ECR image URI for the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "IAM role ARN for Lambda execution"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for Lambda function"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security group IDs for Lambda function"
  type        = list(string)
}
