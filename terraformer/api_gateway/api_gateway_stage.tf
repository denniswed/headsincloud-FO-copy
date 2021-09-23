resource "aws_api_gateway_stage" "tfer--0abe4bmm65-002F-CFStage" {
  cache_cluster_enabled = "false"
  cache_cluster_size    = "0.5"
  deployment_id         = "71qw8h"
  rest_api_id           = "0abe4bmm65"
  stage_name            = "CFStage"
  xray_tracing_enabled  = "false"
}

resource "aws_api_gateway_stage" "tfer--uhgwqthcj3-002F-CFStage" {
  cache_cluster_enabled = "false"
  cache_cluster_size    = "0.5"
  deployment_id         = "daxtq5"
  description           = "CodeFest Stage"
  rest_api_id           = "uhgwqthcj3"
  stage_name            = "CFStage"
  xray_tracing_enabled  = "false"
}
