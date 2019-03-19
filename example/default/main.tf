module "lambda-slack" {
  source = "../.."

  topic_name = "lambda-to-slack"

  name_prefix = "name-prefix"

  random_postfix = "true"

  handler = "bin/main"

  slack_hook = "https://hooks.slack.com/services/Secret"
}
