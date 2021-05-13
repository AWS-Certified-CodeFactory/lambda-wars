locals {
  common_tags = {
    org     = var.org
    env     = var.env
    project = "lambda-wars"
  }
}

variable "org" {
  description = "Name of the Organization"
  type        = string
  default     = "lambda"
}

variable "env" {
  description = "Name of the Environment"
  type        = string
  default     = "wrz"
}

variable "aws_region" {
  description = "AWS Resources created region"
  type        = string
  default     = "us-east-1"
}