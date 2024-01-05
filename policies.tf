data "aws_iam_policy_document" "s3" {
  statement {
    sid = "S3ReadAccess"
    actions = [
      "s3:Get*",
      "s3:Describe*",
      "s3:List*",
      "glacier:Describe*",
      "glacier:Get",
      "glacier:List"
    ]
    resources = ["arn:aws:s3:::*"]
    effect = "Allow"
  }
}

data "aws_iam_policy_document" "rds" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "rds:Describe*"
    ]
    resources = ["arn:aws:rds:*"]
    effect = "Allow"
  }
}

data "aws_iam_policy_document" "ec2" {}

data "aws_iam_policy_document" "ecs" {
  statement {
    sid = "ECSReadAccess"
    actions = [
      "ecs:Describe*",
      "ecr:Describe*",
      "ecr:List",
      "ecr:Get*",
    ]
    resources = ["arn:aws:rds:*"]
    effect = "Allow"
  }
}

data "aws_iam_policy_document" "iam" {}

data "aws_iam_policy_document" "vpc" {}

data "aws_iam_policy_document" "cloudwatch" {}

data "aws_iam_policy_document" "cloudfront" {}

data "aws_iam_policy_document" "apprunner" {}

data "aws_iam_policy_document" "lambda" {}

data "aws_iam_policy_document" "dynamodb" {}

data "aws_iam_policy_document" "cloudformation" {}

data "aws_iam_policy_document" "apigateway" {}

data "aws_iam_policy_document" "sqs" {}

data "aws_iam_policy_document" "sns" {}

data "aws_iam_policy_document" "ses" {}

data "aws_iam_policy_document" "backup" {}
