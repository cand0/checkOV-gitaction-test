provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-checkov-test-bucket"
  acl    = "public-read" # <-- 이 부분이 checkov에 걸릴 가능성 높음 (Critical)
}
