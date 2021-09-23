resource "aws_codebuild_project" "tfer--sendtos3" {
  artifacts {
    encryption_disabled    = "false"
    override_artifact_name = "false"
    type                   = "NO_ARTIFACTS"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "1"
  encryption_key         = "arn:aws:kms:us-east-1:744302382340:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      group_name  = "codebuild"
      status      = "ENABLED"
      stream_name = "sendtos3"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name           = "sendtos3"
  queued_timeout = "480"
  service_role   = "arn:aws:iam::744302382340:role/service-role/codebuild-sendtos3-service-role"

  source {
    buildspec       = "s3update/buildspec.yml"
    git_clone_depth = "0"

    git_submodules_config {
      fetch_submodules = "false"
    }

    insecure_ssl        = "false"
    location            = "https://github.com/randerson8907/fed-qa.git"
    report_build_status = "false"
    type                = "GITHUB"
  }

  source_version = "master"
}
