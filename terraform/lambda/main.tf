resource "aws_lambda_function" "test_lambda" {
  function_name = var.function_name
  role          = aws_iam_role.lambda_role.arn
  handler       = var.handler

  runtime   = var.runtime
  s3_bucket = var.s3_bucket
  s3_key    = var.s3_key

  environment {
    variables = var.env_variables
  }

  timeout = 29

  vpc_config {
    security_group_ids = [var.security_group_id]
    subnet_ids         = var.subnet_ids
  }

}