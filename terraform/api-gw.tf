resource "aws_apigatewayv2_api" "example" {
  name          = "${var.org}-${var.env}-api"
  protocol_type = "HTTP"
}