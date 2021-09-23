resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-apigateway-002F-welcome" {
  name = "/aws/apigateway/welcome"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-AcceptAnswerFunction" {
  name = "/aws/lambda/AcceptAnswerFunction"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-AddQuestionFunction" {
  name = "/aws/lambda/AddQuestionFunction"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-DeleteQuestionFunction" {
  name = "/aws/lambda/DeleteQuestionFunction"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-GetAllFunction" {
  name = "/aws/lambda/GetAllFunction"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-UpdateAnswerFunction" {
  name = "/aws/lambda/UpdateAnswerFunction"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-UpvoteAnswerFunction" {
  name = "/aws/lambda/UpvoteAnswerFunction"
}

resource "aws_cloudwatch_log_group" "tfer--apigateway_questionanswers" {
  name = "apigateway_questionanswers"
}

resource "aws_cloudwatch_log_group" "tfer--codebuild" {
  name = "codebuild"
}
