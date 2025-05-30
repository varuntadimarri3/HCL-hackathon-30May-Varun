module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "sg" {
  source   = "./modules/security_groups"
  vpc_id   = module.vpc.vpc_id
}

module "ecr" {
  source     = "./modules/ecr"
  repo_name  = var.repo_name

}

module "lambda" {
  source             = "./modules/lambda"
  lambda_name        = var.lambda_name
  image_uri          = var.image_uri
  lambda_role_arn    = module.iam.lambda_exec_role_arn
  subnet_ids         = module.vpc.public_subnet_ids
  security_group_ids = [module.sg.lambda_sg_id]

  depends_on = [
    module.iam
  ]
}

module "apigw" {
  source      = "./modules/apigateway"
  lambda_name = var.lambda_name
  lambda_arn  = module.lambda.lambda_arn
  api_name    = var.api_name

  depends_on = [module.lambda]
}