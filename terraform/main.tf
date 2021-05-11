module "lambda_ping_python" {
  source = "./lambda"

  org         = var.org
  env         = var.env
  common_tags = local.common_tags

  function_name = "ping_python"
  handler       = "handler.handle"
  runtime       = "python3.8"
  s3_bucket     = aws_s3_bucket.artifacts.bucket
  s3_key        = "ping-python.zip"

  security_group_id = module.vpc.default_security_group_id
  subnet_ids        = module.vpc.private_subnets
}