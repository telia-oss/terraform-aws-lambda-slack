output "topic_arn" {
  description = "The ARN of the SNS topic"
  value       = "${aws_sns_topic.alarm_topic.arn}"
}

output "lambda_arn" {
  description = "The ARN of the Lambda function"
  value       = "${aws_lambda_function.notify_slack.arn}"
}
