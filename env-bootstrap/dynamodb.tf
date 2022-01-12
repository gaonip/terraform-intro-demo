resource "aws_dynamodb_table" "terraform_statelock" {
  name         = "terraform-statelock"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
  lifecycle {
    ignore_changes = [
      read_capacity,
      write_capacity,
    ]
  }
  point_in_time_recovery {
    enabled = false
  }
  server_side_encryption {
    enabled = false
  }
}