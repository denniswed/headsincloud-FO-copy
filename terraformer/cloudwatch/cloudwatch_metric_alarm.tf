resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-AlarmHigh-002D-bab6743e-002D-cc24-002D-45cd-002D-a6e0-002D-0d9d27bfa3bd" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1."
  alarm_name          = "TargetTracking-table/dmQuestion-AlarmHigh-bab6743e-cc24-45cd-a6e0-0d9d27bfa3bd"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "42"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-AlarmHigh-002D-c0cec5db-002D-0208-002D-4e8b-002D-bb44-002D-0b0885ac02b5" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a."
  alarm_name          = "TargetTracking-table/dmQuestion-AlarmHigh-c0cec5db-0208-4e8b-bb44-0b0885ac02b5"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "42"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-AlarmLow-002D-1dcbbfe3-002D-47a6-002D-4b8f-002D-b123-002D-a489b805ad6f" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a."
  alarm_name          = "TargetTracking-table/dmQuestion-AlarmLow-1dcbbfe3-47a6-4b8f-b123-a489b805ad6f"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "30"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-AlarmLow-002D-229a5354-002D-8ab4-002D-4ca0-002D-9651-002D-f4ba566574e3" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1."
  alarm_name          = "TargetTracking-table/dmQuestion-AlarmLow-229a5354-8ab4-4ca0-9651-f4ba566574e3"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "30"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-ProvisionedCapacityHigh-002D-b45249e1-002D-ee5e-002D-46cd-002D-8059-002D-24edc591f800" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1."
  alarm_name          = "TargetTracking-table/dmQuestion-ProvisionedCapacityHigh-b45249e1-ee5e-46cd-8059-24edc591f800"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-ProvisionedCapacityHigh-002D-ca3e28ce-002D-dcc0-002D-42c6-002D-beb6-002D-ea88046fd4c2" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a."
  alarm_name          = "TargetTracking-table/dmQuestion-ProvisionedCapacityHigh-ca3e28ce-dcc0-42c6-beb6-ea88046fd4c2"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-ProvisionedCapacityLow-002D-8f486c4e-002D-e463-002D-42ca-002D-b676-002D-3df3e684748a" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:eb838934-9f8c-4b9a-b0a0-7007120c2d1f:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/003135b0-4335-4463-ad50-4c9c328c07a1."
  alarm_name          = "TargetTracking-table/dmQuestion-ProvisionedCapacityLow-8f486c4e-e463-42ca-b676-3df3e684748a"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-dmQuestion-002D-ProvisionedCapacityLow-002D-c66c6589-002D-fa62-002D-44d6-002D-b9e2-002D-6c566f74ad29" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:d1479d89-bf74-4e76-ae9c-8d88c290745c:resource/dynamodb/table/dmQuestion:policyName/$dmQuestion-scaling-policy:createdBy/37f0ae7e-a441-41b5-ad36-6463e2b3928a."
  alarm_name          = "TargetTracking-table/dmQuestion-ProvisionedCapacityLow-c66c6589-fa62-44d6-b9e2-6c566f74ad29"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "dmQuestion"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-AlarmHigh-002D-33accf37-002D-99f1-002D-4138-002D-8322-002D-4e867996b39c" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301."
  alarm_name          = "TargetTracking-table/headsincloud_question-AlarmHigh-33accf37-99f1-4138-8322-4e867996b39c"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "42"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-AlarmHigh-002D-9a36ff65-002D-755e-002D-4d20-002D-8421-002D-9289cedd4026" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9."
  alarm_name          = "TargetTracking-table/headsincloud_question-AlarmHigh-9a36ff65-755e-4d20-8421-9289cedd4026"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "42"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-AlarmLow-002D-02e8cdf4-002D-c4c4-002D-40e2-002D-9580-002D-873dc4a542b5" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301."
  alarm_name          = "TargetTracking-table/headsincloud_question-AlarmLow-02e8cdf4-c4c4-40e2-9580-873dc4a542b5"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "30"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-AlarmLow-002D-47339d62-002D-2728-002D-4858-002D-a151-002D-b38a39db70ab" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9."
  alarm_name          = "TargetTracking-table/headsincloud_question-AlarmLow-47339d62-2728-4858-a151-b38a39db70ab"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "30"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-ProvisionedCapacityHigh-002D-b6f0954c-002D-7097-002D-45c7-002D-9d42-002D-0e76d798c181" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301."
  alarm_name          = "TargetTracking-table/headsincloud_question-ProvisionedCapacityHigh-b6f0954c-7097-45c7-9d42-0e76d798c181"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-ProvisionedCapacityHigh-002D-fb3292b1-002D-4581-002D-4f25-002D-9c7b-002D-b8c47b7bcc61" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9."
  alarm_name          = "TargetTracking-table/headsincloud_question-ProvisionedCapacityHigh-fb3292b1-4581-4f25-9c7b-b8c47b7bcc61"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-ProvisionedCapacityLow-002D-42d65f13-002D-838f-002D-4e62-002D-960b-002D-dd9bc2c800d6" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:cb87b6dc-2aab-4b38-a1a4-0557cbb02495:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/2f6f177e-e48c-413d-b27c-89ef4cf597b9."
  alarm_name          = "TargetTracking-table/headsincloud_question-ProvisionedCapacityLow-42d65f13-838f-4e62-960b-dd9bc2c800d6"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-headsincloud_question-002D-ProvisionedCapacityLow-002D-f306d023-002D-4c2f-002D-4cee-002D-89c0-002D-05a366846bc2" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:bf3fc8f8-7471-4d42-879d-8b9314e34140:resource/dynamodb/table/headsincloud_question:policyName/$headsincloud_question-scaling-policy:createdBy/9d9b2b29-d5e9-43d7-8e7b-1b6b9530f301."
  alarm_name          = "TargetTracking-table/headsincloud_question-ProvisionedCapacityLow-f306d023-4c2f-4cee-89c0-05a366846bc2"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "headsincloud_question"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-AlarmHigh-002D-0a9e2b1d-002D-ad01-002D-45fc-002D-95c8-002D-765f8ee3ebf0" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91."
  alarm_name          = "TargetTracking-table/testdelete-AlarmHigh-0a9e2b1d-ad01-45fc-95c8-765f8ee3ebf0"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "42"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-AlarmHigh-002D-d3c8513c-002D-b4fb-002D-4ea7-002D-b10a-002D-6b1dd2eca396" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939."
  alarm_name          = "TargetTracking-table/testdelete-AlarmHigh-d3c8513c-b4fb-4ea7-b10a-6b1dd2eca396"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "42"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-AlarmLow-002D-a019f377-002D-f9db-002D-4a09-002D-a3a9-002D-c78183b0fa41" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91."
  alarm_name          = "TargetTracking-table/testdelete-AlarmLow-a019f377-f9db-4a09-a3a9-c78183b0fa41"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "30"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-AlarmLow-002D-c117a565-002D-2cfe-002D-4409-002D-a9a1-002D-5b9749b79159" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939."
  alarm_name          = "TargetTracking-table/testdelete-AlarmLow-c117a565-2cfe-4409-a9a1-5b9749b79159"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "30"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-ProvisionedCapacityHigh-002D-7c1ae1cb-002D-e49d-002D-4256-002D-9e21-002D-1e5dc70ac983" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91."
  alarm_name          = "TargetTracking-table/testdelete-ProvisionedCapacityHigh-7c1ae1cb-e49d-4256-9e21-1e5dc70ac983"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-ProvisionedCapacityHigh-002D-961cfb39-002D-1e1e-002D-4a30-002D-a537-002D-cc15701191b0" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939."
  alarm_name          = "TargetTracking-table/testdelete-ProvisionedCapacityHigh-961cfb39-1e1e-4a30-a537-cc15701191b0"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-ProvisionedCapacityLow-002D-385d98d9-002D-8e81-002D-47cd-002D-815c-002D-7e9dcf9e4e3f" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:c9d896ca-15f7-4a9a-8941-94323012868a:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/2bf19a0d-1b10-4b29-b2ed-6ade9de05b91."
  alarm_name          = "TargetTracking-table/testdelete-ProvisionedCapacityLow-385d98d9-8e81-47cd-815c-7e9dcf9e4e3f"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-002D-table-002F-testdelete-002D-ProvisionedCapacityLow-002D-bfc12284-002D-2be7-002D-432c-002D-8fe7-002D-9bf5b1d6fcfe" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:744302382340:scalingPolicy:3109aec6-d286-42a0-9ae7-125b106003a9:resource/dynamodb/table/testdelete:policyName/$testdelete-scaling-policy:createdBy/43392093-a9f7-478f-914f-485b55408939."
  alarm_name          = "TargetTracking-table/testdelete-ProvisionedCapacityLow-bfc12284-2be7-432c-8fe7-9bf5b1d6fcfe"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "testdelete"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1"
}
