resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAWSCloud9_AWSCloud9ServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSCloud9ServiceRolePolicy"
  role       = "AWSServiceRoleForAWSCloud9"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonElasticsearchService_AmazonElasticsearchServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonElasticsearchServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonElasticsearchService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_AppStreamFleet_AWSApplicationAutoscalingAppStreamFleetPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingAppStreamFleetPolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_AppStreamFleet"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable_AWSApplicationAutoscalingDynamoDBTablePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_EC2SpotFleetRequest_AWSApplicationAutoscalingEC2SpotFleetRequestPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingEC2SpotFleetRequestPolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_EC2SpotFleetRequest"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_ECSService_AWSApplicationAutoscalingECSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_ECSService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_RDSCluster_AWSApplicationAutoscalingRDSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingRDSClusterPolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_RDSCluster"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudTrail_CloudTrailServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudTrailServiceRolePolicy"
  role       = "AWSServiceRoleForCloudTrail"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForECS_AmazonECSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = "AWSServiceRoleForECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--EEOverlordRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "EEOverlordRole"
}

resource "aws_iam_role_policy_attachment" "tfer--GetAllFunction-002D-role-002D-buwwkg2y_AWSLambdaBasicExecutionRole-002D-aca4ff17-002D-7b91-002D-4d4f-002D-9572-002D-8d52cc3d6f27" {
  policy_arn = "arn:aws:iam::744302382340:policy/service-role/AWSLambdaBasicExecutionRole-aca4ff17-7b91-4d4f-9572-8d52cc3d6f27"
  role       = "GetAllFunction-role-buwwkg2y"
}

resource "aws_iam_role_policy_attachment" "tfer--OpsRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "OpsRole"
}

resource "aws_iam_role_policy_attachment" "tfer--OpsRole_ops-002D-default-002D-policy" {
  policy_arn = "arn:aws:iam::744302382340:policy/ops-default-policy"
  role       = "OpsRole"
}

resource "aws_iam_role_policy_attachment" "tfer--TeamRole_0d8fd6bfe6d74be58e0135dd7e51bb6e-002D-policy" {
  policy_arn = "arn:aws:iam::744302382340:policy/0d8fd6bfe6d74be58e0135dd7e51bb6e-policy"
  role       = "TeamRole"
}

resource "aws_iam_role_policy_attachment" "tfer--TeamRole_IAMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  role       = "TeamRole"
}

resource "aws_iam_role_policy_attachment" "tfer--TeamRole_team-002D-default-002D-policy" {
  policy_arn = "arn:aws:iam::744302382340:policy/team-default-policy"
  role       = "TeamRole"
}

resource "aws_iam_role_policy_attachment" "tfer--apigatewayrole_AmazonAPIGatewayPushToCloudWatchLogs" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
  role       = "apigatewayrole"
}

resource "aws_iam_role_policy_attachment" "tfer--apigatewayrole_apigatewayallpolicy" {
  policy_arn = "arn:aws:iam::744302382340:policy/apigatewayallpolicy"
  role       = "apigatewayrole"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-002D-sendtos3-002D-service-002D-role_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "codebuild-sendtos3-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-002D-sendtos3-002D-service-002D-role_CodeBuildBasePolicy-002D-sendtos3-002D-us-002D-east-002D-1" {
  policy_arn = "arn:aws:iam::744302382340:policy/service-role/CodeBuildBasePolicy-sendtos3-us-east-1"
  role       = "codebuild-sendtos3-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-002D-sendtos3-002D-service-002D-role_CodeBuildCloudWatchLogsPolicy-002D-sendtos3-002D-us-002D-east-002D-1" {
  policy_arn = "arn:aws:iam::744302382340:policy/service-role/CodeBuildCloudWatchLogsPolicy-sendtos3-us-east-1"
  role       = "codebuild-sendtos3-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--dmQuestion-002D-role-002D-y49gvamh_AWSLambdaBasicExecutionRole-002D-eee077fc-002D-9822-002D-44de-002D-82b5-002D-bf9ae4ab7284" {
  policy_arn = "arn:aws:iam::744302382340:policy/service-role/AWSLambdaBasicExecutionRole-eee077fc-9822-44de-82b5-bf9ae4ab7284"
  role       = "dmQuestion-role-y49gvamh"
}
