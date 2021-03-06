resource "aws_iam_user_policy_attachment" "deploy-attach" {
  user = aws_iam_user.deploy-user.name
  policy_arn = aws_iam_policy.deploy-policy.arn
}

resource "aws_iam_user_policy_attachment" "deploy-ecs-attach" {
  user = aws_iam_user.deploy-user.name
  policy_arn = aws_iam_policy.deploy-ecs.arn
}