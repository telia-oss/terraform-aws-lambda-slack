module "lambda-slack" {
  source = "../.."

  topic_name = "lambda-to-slack"

  name_prefix = "name-prefix"

  has_random_postfix = false

  handler = "bin/main"

  slack_hook = "https://hooks.slack.com/services/Secret"
}
