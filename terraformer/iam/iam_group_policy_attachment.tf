resource "aws_iam_group_policy_attachment" "tfer--Admins_AdministratorAccess" {
  group      = "Admins"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
