resource "aws_iam_role" "lambda_role" {
  name = "${var.org}-${var.env}-${var.function_name}-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "2021-05-11",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_policy.arn
}

resource "aws_iam_policy" "lambda_policy" {
  name = "${var.org}-${var.env}-${var.function_name}-policy"

  policy = <<EOF
{
   "Version":"2012-10-17",
   "Statement":[
      {
         "Action":"lambda:GetFunction",
         "Effect":"Allow",
         "Resource":[
            "*"
         ]
      },
      {
         "Action":[
            "ec2:CreateNetworkInterface",
            "ec2:DescribeNetworkInterfaces",
            "ec2:DeleteNetworkInterface"
         ],
         "Effect":"Allow",
         "Resource":"*"
      },
      {
         "Action":[
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
         ],
         "Effect":"Allow",
         "Resource":"*"
      },
      {
         "Action":[
            "sqs:DeleteMessage",
            "sqs:GetQueueAttributes",
            "sqs:ReceiveMessage",
            "sqs:SendMessage"
         ],
         "Effect":"Allow",
         "Resource":"*"
      }
   ]
}
EOF
}