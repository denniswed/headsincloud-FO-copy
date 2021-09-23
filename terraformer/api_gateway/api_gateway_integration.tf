resource "aws_api_gateway_integration" "tfer--0abe4bmm65-002F-59easd-002F-OPTIONS" {
  cache_namespace      = "59easd"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "59easd"
  rest_api_id          = "0abe4bmm65"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--0abe4bmm65-002F-59easd-002F-POST" {
  cache_namespace         = "59easd"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "59easd"
  rest_api_id             = "0abe4bmm65"
  timeout_milliseconds    = "29000"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:744302382340:function:UpvoteAnswerFunction/invocations"
}

resource "aws_api_gateway_integration" "tfer--0abe4bmm65-002F-76nyaq-002F-OPTIONS" {
  cache_namespace      = "76nyaq"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "76nyaq"
  rest_api_id          = "0abe4bmm65"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--0abe4bmm65-002F-sagtmt-002F-OPTIONS" {
  cache_namespace      = "sagtmt"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "sagtmt"
  rest_api_id          = "0abe4bmm65"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--giyeweqg8c-002F-l22ltx-002F-GET" {
  cache_namespace         = "l22ltx"
  connection_type         = "INTERNET"
  credentials             = "arn:aws:iam::744302382340:role/apigatewayrole"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\r\n    \"TableName\": \"headsincloud_question\",\r\n    ## \"Partition\": \"question_id\",\r\n    \"KeyConditionExpression\": \"question_id = :v1\",\r\n    ## \"ProjectExpression\": \"question_detail\",\r\n    \"ExpressionAttributeValues\": {\r\n        \":v1\": {\r\n            \"S\": \"$input.params('question_id')\"\r\n        }\r\n    }\r\n}"
  }

  resource_id          = "l22ltx"
  rest_api_id          = "giyeweqg8c"
  timeout_milliseconds = "29000"
  type                 = "AWS"
  uri                  = "arn:aws:apigateway:us-east-1:dynamodb:action/Query"
}

resource "aws_api_gateway_integration" "tfer--giyeweqg8c-002F-l22ltx-002F-OPTIONS" {
  cache_namespace      = "l22ltx"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "l22ltx"
  rest_api_id          = "giyeweqg8c"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--giyeweqg8c-002F-ld90db-002F-OPTIONS" {
  cache_namespace      = "ld90db"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "ld90db"
  rest_api_id          = "giyeweqg8c"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--uhgwqthcj3-002F-j0uzgg-002F-GET" {
  cache_namespace         = "j0uzgg"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "j0uzgg"
  rest_api_id             = "uhgwqthcj3"
  timeout_milliseconds    = "29000"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:744302382340:function:GetAllFunction/invocations"
}

resource "aws_api_gateway_integration" "tfer--uhgwqthcj3-002F-j0uzgg-002F-OPTIONS" {
  cache_namespace         = "j0uzgg"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "OPTIONS"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "j0uzgg"
  rest_api_id             = "uhgwqthcj3"
  timeout_milliseconds    = "29000"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:744302382340:function:AddQuestionFunction/invocations"
}

resource "aws_api_gateway_integration" "tfer--uhgwqthcj3-002F-kjzsbr-002F-OPTIONS" {
  cache_namespace      = "kjzsbr"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "kjzsbr"
  rest_api_id          = "uhgwqthcj3"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--uhgwqthcj3-002F-kjzsbr-002F-POST" {
  cache_namespace         = "kjzsbr"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "kjzsbr"
  rest_api_id             = "uhgwqthcj3"
  timeout_milliseconds    = "29000"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:744302382340:function:dmQuestion/invocations"
}
