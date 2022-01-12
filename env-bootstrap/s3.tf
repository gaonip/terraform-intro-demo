resource "aws_s3_bucket" "state_non_prod" {
  bucket = "tf-intro-terraform-state-non-prod"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "tf-intro-terraform-state-non-prod"
    Environment = "non-prod"
  }
  lifecycle_rule {
    id                                     = "expire-aborted-multipart-uploads"
    enabled                                = true
    prefix                                 = ""
    abort_incomplete_multipart_upload_days = 7
  }
}