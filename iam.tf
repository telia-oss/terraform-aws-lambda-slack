resource "aws_iam_role" "lambda_role" {
  name               = "${var.name_prefix}_lambda_role${var.has_random_postfix ? "_${random_string.lambda_postfix_generator.result}" : ""}"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume.json
}

data "aws_iam_policy_document" "lambda_assume" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "Service"

      identifiers = [
        "lambda.amazonaws.com",
      ]
    }
  }
}

resource "aws_iam_role_policy" "lambda_main" {
  name   = "${var.name_prefix}_lambda_policy${var.has_random_postfix ? "_${random_string.lambda_postfix_generator.result}" : ""}"
  role   = aws_iam_role.lambda_role.name
  policy = data.aws_iam_policy_document.lambda_services_dashboard.json
}

data "aws_iam_policy_document" "lambda_services_dashboard" {
  statement {
    effect = "Allow"

    actions = [
      "ecs:*",
      "cloudwatch:*",
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = [
      "arn:aws:logs:*:*:*",
    ]
  }
}
