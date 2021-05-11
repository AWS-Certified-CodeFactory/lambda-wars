variable "org" {}
variable "env" {}
variable "common_tags" {}
variable "function_name" {}
variable "handler" {}
variable "runtime" {}
variable "s3_bucket" {}
variable "s3_key" {}

variable "env_variables" {
  default = {}
}

variable "security_group_id" {}
variable "subnet_ids" {}