resource "aws_dynamodb_table" "tfer--dmQuestion" {
  attribute {
    name = "question_id"
    type = "N"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "question_id"
  name         = "dmQuestion"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}

resource "aws_dynamodb_table" "tfer--headsincloud_question" {
  attribute {
    name = "question_id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "question_id"
  name         = "headsincloud_question"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}

resource "aws_dynamodb_table" "tfer--testdelete" {
  attribute {
    name = "testdelete_id"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "testdelete_id"
  name         = "testdelete"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  write_capacity = "1"
}
