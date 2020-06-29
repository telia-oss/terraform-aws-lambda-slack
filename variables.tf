variable "name_prefix" {
  description = "A prefix that will be added to resources so that they are unique."
  type        = string
}

variable "topic_name" {
  description = "A prefix that will be added to resources so that they are unique."
  type        = string
}

variable "has_random_postfix" {
  description = "Boolean for adding a random string to the end of the iam role, iam policy, topic and function names"
  type        = bool
  default     = true
}

variable "handler" {
  description = "The function entrypoint in the code."
  type        = string
  default     = "main"
}

variable "timeout" {
  description = "Timeout for the lambda function that copies log entries to Cloud Watch. Modify if needed."
  type        = number
  default     = 30
}

variable "memory_size" {
  description = "Memory allocation for the lambda function. Modify if needed."
  type        = number
  default     = 256
}

variable "lambda_s3_bucket" {
  description = "The bucket where the lambda function is uploaded."
  type        = string
  default     = "telia-oss"
}

variable "s3_key" {
  description = "The s3 key for the Lambda artifact."
  type        = string
  default     = "aws-notify-slack/main.zip"
}

variable "slack_hook" {
  description = "Slack channel webhook."
  type        = string
}

variable "username" {
  description = "Slack username."
  type        = string
  default     = "AWS-bot"
}

variable "icon" {
  description = "Slack icon."
  type        = string
  default     = ":loudspeaker:"
}

variable "subnet_ids" {
  description = "VPC subnets for Lambda"
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "SG IDs for Lambda, should at least allow all outbound"
  type        = list(string)
  default     = []
}
