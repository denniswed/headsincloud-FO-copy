resource "aws_iam_role_policy" "tfer--EEOrganizations_AdministratorAccess" {
  name = "AdministratorAccess"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "EEOrganizations"
}

resource "aws_iam_role_policy" "tfer--GetAllFunction-002D-role-002D-buwwkg2y_AllAdminPolicy" {
  name = "AllAdminPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "GetAllFunction-role-buwwkg2y"
}
