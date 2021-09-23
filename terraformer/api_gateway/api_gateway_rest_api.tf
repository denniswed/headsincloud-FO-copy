resource "aws_api_gateway_rest_api" "tfer--Test-0020-API" {
  api_key_source               = "HEADER"
  description                  = "Just a test API"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = "-1"
  name                     = "Test API"
}

resource "aws_api_gateway_rest_api" "tfer--Upvote-0020-API" {
  api_key_source               = "HEADER"
  description                  = "Upvote API"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = "-1"
  name                     = "Upvote API"
}

resource "aws_api_gateway_rest_api" "tfer--getquestionbyid" {
  api_key_source               = "HEADER"
  description                  = "get question info based on id"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = "-1"
  name                     = "getquestionbyid"
}
