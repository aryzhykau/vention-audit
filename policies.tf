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

data "aws_iam_policy_document" "iam" {  statement {
    sid = "RDSReadAccess"
    actions = [
      "iam:Get*",
"iam:List*"
    ]
    resources = ["arn:aws:iam:*"]
    effect = "Allow"
  }}

data "aws_iam_policy_document" "vpc" {  statement {
    sid = "RDSReadAccess"
    actions = [ "ec2:Get",
"ec2:List",
      "ec2:DescribeAvailbilityZones",
"ec2:DescribeAdressTransfers",
"ec2:DescribeAdrdreses",
"ec2:DescribeAddressesAttribute",
"ec2:DescribeAwsNetworkPerformanceMetricSubscriptions",

    ]
    resources = ["arn:aws:ec2:*"]
    effect = "Allow"
  }}

data "aws_iam_policy_document" "cloudwatch" {}

data "aws_iam_policy_document" "cloudfront" {}

data "aws_iam_policy_document" "apprunner" {}

data "aws_iam_policy_document" "lambda" {}

data "aws_iam_policy_document" "dynamodb" {}

data "aws_iam_policy_document" "cloudformation" {}

data "aws_iam_policy_document" "apigateway" {}

data "aws_iam_policy_document" "sqs" {  statement {
    sid = "RDSReadAccess"
    actions = [
      "sqs:Get*",
"sqs:List*
    ]
    resources = ["arn:aws:sqs:*"]
    effect = "Allow"
  }}

data "aws_iam_policy_document" "sns" {  statement {
    sid = "RDSReadAccess"
    actions = [
      "sns:Get*", 
"sns:List*
    ]
    resources = ["arn:aws:sns:*"]
    effect = "Allow"
  }}

data "aws_iam_policy_document" "ses" {  statement {
    sid = "RDSReadAccess"
    actions = [
      "ses:Describe*", 
"ses:Get*",
"ses:List*"
    ]
    resources = ["arn:aws:ses:*"]
    effect = "Allow"
  }}

data "aws_iam_policy_document" "backup" {}
