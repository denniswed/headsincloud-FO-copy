resource "aws_api_gateway_method" "tfer--0abe4bmm65-002F-59easd-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "59easd"
  rest_api_id      = "0abe4bmm65"
}

resource "aws_api_gateway_method" "tfer--0abe4bmm65-002F-59easd-002F-POST" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "POST"

  request_parameters = {
    "method.request.path.id" = "true"
  }

  resource_id = "59easd"
  rest_api_id = "0abe4bmm65"
}

resource "aws_api_gateway_method" "tfer--0abe4bmm65-002F-76nyaq-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "76nyaq"
  rest_api_id      = "0abe4bmm65"
}

resource "aws_api_gateway_method" "tfer--0abe4bmm65-002F-sagtmt-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "sagtmt"
  rest_api_id      = "0abe4bmm65"
}

resource "aws_api_gateway_method" "tfer--giyeweqg8c-002F-l22ltx-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"

  request_parameters = {
    "method.request.path.question_id" = "true"
  }

  resource_id = "l22ltx"
  rest_api_id = "giyeweqg8c"
}

resource "aws_api_gateway_method" "tfer--giyeweqg8c-002F-l22ltx-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "l22ltx"
  rest_api_id      = "giyeweqg8c"
}

resource "aws_api_gateway_method" "tfer--giyeweqg8c-002F-ld90db-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "ld90db"
  rest_api_id      = "giyeweqg8c"
}

resource "aws_api_gateway_method" "tfer--uhgwqthcj3-002F-j0uzgg-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  resource_id      = "j0uzgg"
  rest_api_id      = "uhgwqthcj3"
}

resource "aws_api_gateway_method" "tfer--uhgwqthcj3-002F-j0uzgg-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "j0uzgg"
  rest_api_id      = "uhgwqthcj3"
}

resource "aws_api_gateway_method" "tfer--uhgwqthcj3-002F-kjzsbr-002F-OPTIONS" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "OPTIONS"
  resource_id      = "kjzsbr"
  rest_api_id      = "uhgwqthcj3"
}

resource "aws_api_gateway_method" "tfer--uhgwqthcj3-002F-kjzsbr-002F-POST" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "POST"
  resource_id      = "kjzsbr"
  rest_api_id      = "uhgwqthcj3"
}
