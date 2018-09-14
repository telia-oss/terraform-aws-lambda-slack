module "lambda-slack" {
  source = "../.."

  topic_name = "lambda-to-slack"

  name_prefix = "name-prefix"

  handler = "main"

  slack_hook = "https://hooks.slack.com/services/Secret"
}
