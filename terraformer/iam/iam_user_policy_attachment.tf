resource "aws_iam_user_policy_attachment" "tfer--EEOverlord_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "EEOverlord"
}

resource "aws_iam_user_policy_attachment" "tfer--Jeff_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "Jeff"
}

resource "aws_iam_user_policy_attachment" "tfer--Oleg_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "Oleg"
}
