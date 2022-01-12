terraform {
  backend "s3" {
    bucket = "tf-intro-terraform-state-non-prod"
    key = "env-test-eu-west-1.tfstate"
    region = "eu-west-1"
    encrypt = "true"
    dynamodb_table = "terraform-statelock"
  }
  required_version = "0.12.13"
}
