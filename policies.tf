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
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "rds" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "rds:Describe*"
    ]
    resources = ["arn:aws:rds:*"]
    effect    = "Allow"
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
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "iam" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "iam:Get*",
      "iam:List*"
    ]
    resources = ["arn:aws:iam:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "vpc" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "ec2:Get",
      "ec2:List",
      "ec2:DescribeAvailbilityZones",
      "ec2:DescribeAdressTransfers",
      "ec2:DescribeAdrdreses",
      "ec2:DescribeAddressesAttribute",
      "ec2:DescribeAwsNetworkPerformanceMetricSubscriptions",
      "ec2:DescribeClientVpnAuthorizationRules",
      "ec2:DescribeClientVpnConnections",
      "ec2:DescribeClientVpnEndpoints",
      "ec2:DescribeClientVpnRoutes",
      "ec2:DescribeClientVpnTargetNetworks",
      "ec2:DescribeCoipPools",
      "ec2:DescribeCustomerGateways",
      "ec2:DescribeDhcpOptions",
      "ec2:DescribeEgressOnlylnternetGateways",
      "ec2:DescribeFlowLogs",
      "ec2:DescribelnternetGateways",
      "ec2:Describelpv6Pools",
      "ec2:DescribeLocalGatewayRouteTablePermissions",
      "ec2:DescribelLocalGatewayRouteTableVirtualInterfaceGroupAssociations",
      "ec2:DescrbeLocalGatewayRouteTableVpcAssociations",
      "ec2:DescribeLocalGatewayRouteTables",
      "ec2:DescribelLocalGatewayVirtualInterfaceGroups",
      "ec2:DescribelLocalGatewayVirtualInterfaces",
      "ec2:DescribeLocalGateways",


    ]
    resources = ["arn:aws:ec2:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "cloudwatch" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "cloudwatch:Get*",
      "cloudwatch:List*",
      "cloudwatch:Decsribe*"
    ]
    resources = ["arn:aws:cloudwatch:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "cloudfront" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "cloudfront:Get*",
      "cloudfront:List*",
      "cloudfront:Decsribe*"
    ]
    resources = ["arn:aws:cloudfront:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "apprunner" {}

data "aws_iam_policy_document" "lambda" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "lambda:Get*",
      "lambda:List*"
    ]
    resources = ["arn:aws:lambda:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "dynamodb" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "dynamodb:Get*",
      "dynamodb:List*",
      "dynamodb: Describe*"
    ]
    resources = ["arn:aws:dynamodb:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "cloudformation" {}

data "aws_iam_policy_document" "apigateway" {}

data "aws_iam_policy_document" "sqs" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "sqs:Get*",
      "sqs:List*"
    ]
    resources = ["arn:aws:sqs:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "sns" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "sns:Get*",
      "sns:List*"
    ]
    resources = ["arn:aws:sns:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "ses" {
  statement {
    sid = "RDSReadAccess"
    actions = [
      "ses:Describe*",
      "ses:Get*",
      "ses:List*"
    ]
    resources = ["arn:aws:ses:*"]
    effect    = "Allow"
  }
}

data "aws_iam_policy_document" "backup" {}
