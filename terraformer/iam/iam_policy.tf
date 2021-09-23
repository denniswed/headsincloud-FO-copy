resource "aws_iam_policy" "tfer--0d8fd6bfe6d74be58e0135dd7e51bb6e-002D-policy" {
  description = "Team Policy"
  name        = "0d8fd6bfe6d74be58e0135dd7e51bb6e-policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "access-analyzer:*",
        "acm-pca:*",
        "acm:*",
        "airflow:*",
        "amplify:*",
        "amplifybackend:*",
        "apigateway:*",
        "appconfig:*",
        "application-autoscaling:*",
        "applicationautoscaling:*",
        "appmesh:*",
        "apprunner:*",
        "appstream:*",
        "appsync:*",
        "aps:*",
        "arsenal:*",
        "artifact:*",
        "athena:*",
        "autoscaling-plans:*",
        "autoscaling:*",
        "awsconnector:*",
        "backup-storage:MountCapsule",
        "backup:*",
        "batch:*",
        "braket:*",
        "ce:*",
        "cloud9:*",
        "cloudformation:*",
        "cloudfront:*",
        "cloudhsm:*",
        "cloudmap:*",
        "cloudshell:*",
        "cloudtrail:*",
        "cloudwatch:*",
        "codeartifact:*",
        "codebuild:*",
        "codecommit:*",
        "codedeploy:*",
        "codeguru-profiler:*",
        "codeguru-reviewer:*",
        "codepipeline:*",
        "codestar-connections:*",
        "codestar:*",
        "cognito-identity:*",
        "cognito-idp:*",
        "cognito-sync:*",
        "comprehend:*",
        "comprehendmedical:*",
        "compute-optimizer:Get*",
        "config:*",
        "connect:*",
        "databrew:*",
        "dataexchange:*",
        "datapipeline:*",
        "datasync:*",
        "deepracer:*",
        "dms:*",
        "ds:*",
        "dynamodb:*",
        "ec2-instance-connect:SendSSHPublicKey",
        "ec2:*",
        "ec2messages:*",
        "ecr:*",
        "ecs:*",
        "eks:*",
        "elastic-inference:*",
        "elasticache:*",
        "elasticbeanstalk:*",
        "elasticfilesystem:*",
        "elasticloadbalancing:*",
        "elasticmapreduce:*",
        "emr:*",
        "es:*",
        "events:*",
        "execute-api:*",
        "firehose:*",
        "fis:*",
        "forecast:*",
        "freertos:*",
        "fsx:*",
        "gamelift:*",
        "geo:*",
        "glacier:*",
        "globalaccelerator:*",
        "glue:*",
        "greengrass:*",
        "guardduty:*",
        "healthlake:*",
        "iam:*",
        "imagebuilder:*",
        "inspector:*",
        "iot:*",
        "iotanalytics:*",
        "iotevents:*",
        "iotsitewise:*",
        "iotthingsgraph:*",
        "iotwireless:*",
        "ivs:*",
        "kafka:*",
        "kendra:*",
        "kinesis:*",
        "kinesisanalytics:*",
        "kinesisanalyticsv2:*",
        "kinesisvideo:*",
        "kms:*",
        "lakeformation:*",
        "lambda:*",
        "lex:*",
        "lightsail:*",
        "logs:*",
        "lookoutequipment:*",
        "lookoutmetrics:*",
        "lookoutvision:*",
        "macie2:*",
        "managedblockchain:*",
        "mediaconnect:*",
        "mediaconvert:*",
        "medialive:*",
        "mediapackage-vod:*",
        "mediapackage:*",
        "mediastore:*",
        "mediatailor:*",
        "mgh:*",
        "mgn:*",
        "mobiletargeting:*",
        "mq:*",
        "network-firewall:*",
        "personalize:*",
        "pi:*",
        "pinpoint:*",
        "polly:*",
        "pricing:*",
        "qldb:*",
        "quicksight:*",
        "rds-data:*",
        "rds-db:*",
        "rds:*",
        "redshift-data:*",
        "redshift:*",
        "rekognition:*",
        "resource-explorer:*",
        "resource-groups:*",
        "robomaker:*",
        "route53-recovery-cluster:*",
        "route53-recovery-control-config:*",
        "route53-recovery-readiness:*",
        "route53:*",
        "route53domains:DisableDomainAutoRenew",
        "route53domains:ListDomains",
        "route53resolver:*",
        "s3-object-lambda:*",
        "s3:*",
        "sagemaker:*",
        "schemas:*",
        "secretsmanager:*",
        "securityhub:*",
        "serverlessrepo:*",
        "servicecatalog:*",
        "servicediscovery:*",
        "ses:*",
        "sesv2:*",
        "signer:*",
        "sms:*",
        "sns:*",
        "sqs:*",
        "ssm:*",
        "ssmmessages:*",
        "states:*",
        "storagegateway:*",
        "sts:*",
        "synthetics:*",
        "tag:*",
        "textract:*",
        "tiros:*",
        "transcribe:*",
        "transfer:*",
        "translate:*",
        "trustedadvisor:*",
        "waf-regional:*",
        "waf:*",
        "wafv2:*",
        "wellarchitected:*",
        "xray:*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllReaperSupportedServices"
    },
    {
      "Action": "ec2:RunInstances",
      "Condition": {
        "StringLike": {
          "ec2:InstanceType": [
            "*6xlarge",
            "*8xlarge",
            "*10xlarge",
            "*12xlarge",
            "*16xlarge",
            "*18xlarge",
            "*24xlarge",
            "f1.4xlarge",
            "x1*",
            "z1*",
            "*metal"
          ]
        }
      },
      "Effect": "Deny",
      "Resource": [
        "arn:aws:ec2:*:*:instance/*"
      ],
      "Sid": "DenyXXLInstances"
    },
    {
      "Action": [
        "ec2:ModifyReservedInstances",
        "ec2:PurchaseHostReservation",
        "ec2:PurchaseReservedInstancesOffering",
        "ec2:PurchaseScheduledInstances",
        "rds:PurchaseReservedDBInstancesOffering",
        "dynamodb:PurchaseReservedCapacityOfferings"
      ],
      "Effect": "Deny",
      "Resource": "*",
      "Sid": "DontBuyReservationsPlz"
    },
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::744302382340:role/TeamRole",
      "Sid": "PassRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-002D-aca4ff17-002D-7b91-002D-4d4f-002D-9572-002D-8d52cc3d6f27" {
  name = "AWSLambdaBasicExecutionRole-aca4ff17-7b91-4d4f-9572-8d52cc3d6f27"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:744302382340:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:744302382340:log-group:/aws/lambda/GetAllFunction:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-002D-eee077fc-002D-9822-002D-44de-002D-82b5-002D-bf9ae4ab7284" {
  name = "AWSLambdaBasicExecutionRole-eee077fc-9822-44de-82b5-bf9ae4ab7284"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:744302382340:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:744302382340:log-group:/aws/lambda/dmQuestion:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-002D-sendtos3-002D-us-002D-east-002D-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-sendtos3-us-east-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:744302382340:log-group:/aws/codebuild/sendtos3",
        "arn:aws:logs:us-east-1:744302382340:log-group:/aws/codebuild/sendtos3:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:us-east-1:744302382340:report-group/sendtos3-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodeBuildCloudWatchLogsPolicy-002D-sendtos3-002D-us-002D-east-002D-1" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildCloudWatchLogsPolicy-sendtos3-us-east-1"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:744302382340:log-group:codebuild",
        "arn:aws:logs:us-east-1:744302382340:log-group:codebuild:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--apigatewayallpolicy" {
  name = "apigatewayallpolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "KeysToKingdomStuff"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ops-002D-default-002D-policy" {
  description = "ops role default policy"
  name        = "ops-default-policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "route53domains:*",
        "ec2:ModifyReservedInstances",
        "ec2:PurchaseHostReservation",
        "ec2:PurchaseReservedInstancesOffering",
        "ec2:PurchaseScheduledInstances",
        "rds:PurchaseReservedDBInstancesOffering",
        "dynamodb:PurchaseReservedCapacityOfferings",
        "s3:PutObjectRetention",
        "s3:PutObjectLegalHold",
        "s3:BypassGovernanceRetention",
        "s3:PutBucketObjectLockConfiguration"
      ],
      "Effect": "Deny",
      "Resource": "*",
      "Sid": "DenyBlocklist"
    },
    {
      "Condition": {
        "StringNotEquals": {
          "aws:RequestedRegion": [
            "us-east-1"
          ]
        }
      },
      "Effect": "Deny",
      "NotAction": [
        "iam:*",
        "sts:*",
        "s3:*",
        "ds:*",
        "artifact:Get",
        "artifact:DownloadAgreement",
        "lightsail:*",
        "braket:*",
        "quicksight:*",
        "cloudfront:*",
        "route53:*",
        "servicediscovery:*",
        "waf:*",
        "waf-regional:*",
        "wafv2:*",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:PutMetricAlarm",
        "cloudwatch:DeleteAlarms",
        "cloudwatch:GetMetricStatistics",
        "ec2:Describe*",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetAuthorizationToken",
        "globalaccelerator:*",
        "acm:List*",
        "acm:Describe*",
        "kms:Describe*",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*",
        "kms:Get*",
        "kms:List*",
        "kms:CreateGrant",
        "kms:RevokeGrant",
        "ssm:List*",
        "directconnect:Describe*"
      ],
      "Resource": "*",
      "Sid": "DenyAllOutsideAllowedRegions"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--team-002D-default-002D-policy" {
  description = "team default policy"
  name        = "team-default-policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:List*",
        "iam:Get*",
        "iam:Generate*",
        "sts:GetCallerIdentity"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowIAMRO"
    },
    {
      "Action": "iam:CreateServiceLinkedRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/aws-service-role/*"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::744302382340:role/TeamRole"
    },
    {
      "Action": [
        "route53domains:*",
        "ec2:ModifyReservedInstances",
        "ec2:PurchaseHostReservation",
        "ec2:PurchaseReservedInstancesOffering",
        "ec2:PurchaseScheduledInstances",
        "rds:PurchaseReservedDBInstancesOffering",
        "dynamodb:PurchaseReservedCapacityOfferings",
        "s3:PutObjectRetention",
        "s3:PutObjectLegalHold",
        "s3:BypassGovernanceRetention",
        "s3:PutBucketObjectLockConfiguration"
      ],
      "Effect": "Deny",
      "Resource": "*",
      "Sid": "DenyBlocklist"
    },
    {
      "Condition": {
        "StringNotEquals": {
          "aws:RequestedRegion": [
            "us-east-1"
          ]
        }
      },
      "Effect": "Deny",
      "NotAction": [
        "iam:*",
        "sts:*",
        "s3:*",
        "ds:*",
        "artifact:Get",
        "artifact:DownloadAgreement",
        "lightsail:*",
        "braket:*",
        "quicksight:*",
        "cloudfront:*",
        "route53:*",
        "servicediscovery:*",
        "waf:*",
        "waf-regional:*",
        "wafv2:*",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:PutMetricAlarm",
        "cloudwatch:DeleteAlarms",
        "cloudwatch:GetMetricStatistics",
        "ec2:Describe*",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetAuthorizationToken",
        "globalaccelerator:*",
        "acm:List*",
        "acm:Describe*",
        "kms:Describe*",
        "kms:ReEncrypt*",
        "kms:GenerateDataKey*",
        "kms:Get*",
        "kms:List*",
        "kms:CreateGrant",
        "kms:RevokeGrant",
        "ssm:List*",
        "directconnect:Describe*"
      ],
      "Resource": "*",
      "Sid": "DenyAllOutsideAllowedRegions"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
