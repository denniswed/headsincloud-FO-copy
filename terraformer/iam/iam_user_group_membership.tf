resource "aws_iam_user_group_membership" "tfer--Jeff-002F-Admins" {
  groups = ["Admins"]
  user   = "Jeff"
}

resource "aws_iam_user_group_membership" "tfer--Oleg-002F-Admins" {
  groups = ["Admins"]
  user   = "Oleg"
}

resource "aws_iam_user_group_membership" "tfer--dennis-002F-Admins" {
  groups = ["Admins"]
  user   = "dennis"
}
