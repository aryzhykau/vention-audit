resource "aws_iam_role" "this" {
  name = "vention-audit-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          AWS = "arn:aws:iam::SOURCE_ACCOUNT_ID:root"
        }
      }
    ]
  })
}

