# Sns events to slack

[![Build Status](https://travis-ci.com/telia-oss/terraform-module-template.svg?branch=master)](https://travis-ci.com/telia-oss/terraform-module-template)
![](https://img.shields.io/maintenance/yes/2018.svg)

This module lets you send sns events to slck.

The module creates sns topic and subscription, and targets the subscriptions to a Lambda function that is provisioned by this module. The Lambda function format and send sns events to Slack channel.

## Lambda  
[The Lambda artifact can be found here](https://github.com/telia-oss/aws-notify-slack)

## Examples

* [Simple Example](examples/default/example.tf)


## Authors

Currently maintained by [these contributors](../../graphs/contributors).

## License

MIT License. See [LICENSE](LICENSE) for full details.
