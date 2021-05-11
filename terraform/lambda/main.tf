resource "aws_lambda_function" "test_lambda" {
  function_name = var.function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = var.handler

  runtime   = var.runtime
  s3_bucket = var.s3_bucket
  s3_key    = var.s3_key

  environment {
    variables = var.env_variables
  }
}