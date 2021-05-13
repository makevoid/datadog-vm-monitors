HOSTS = [
  "env01-vm1",
  "env01-vm2",
]

DEVOPS_USERNAMES = %w(@makevoid) # devops to notify on slack - slack usernames

# see: https://app.datadoghq.eu/account/settings#integrations/slack
SLACK_ACCOUNT_NAME = "slack"
SLACK_CHANNEL_NAME = "devops"
