resource "aws_s3_bucket" "artifacts" {
  bucket = "net.kwler.${var.org}.${var.env}.artifacts"
}

resource "aws_ecr_repository" "artifacts" {
  name = "net.kwler.${var.org}.${var.env}.artifacts"
}