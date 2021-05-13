require "bundler"
Bundler.require :default

CONF_FILE_PREFIX = "datadog"

require_relative "lib/monkeypatches"
require_relative "lib/conf_load"
include ConfLoad

API_KEY = load_conf_file "api_key"
APP_KEY = load_conf_file "app_key"

DOG = Dogapi::Client.new API_KEY, APP_KEY

require_relative "lib/monitor_defaults"
include MonitorDefaults

require_relative "config"
require_relative "config_monitors"
