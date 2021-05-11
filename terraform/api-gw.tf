resource "aws_apigatewayv2_api" "example" {
  name          = "${var.org}-${var.env}-api"
  description   = "Entrypoint for the different lambda tech"
  protocol_type = "HTTP"
}