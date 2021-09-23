resource "aws_iam_instance_profile" "tfer--TeamRoleInstanceProfile" {
  name = "TeamRoleInstanceProfile"
  path = "/"
  role = "TeamRole"
}
