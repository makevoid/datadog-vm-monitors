require "bundler"
Bundler.require :default

CONF_FILE_PREFIX = "datadog"

require_relative "lib/monkeypatches"
require_relative "lib/conf_load"
include ConfLoad

API_KEY = load_conf_file "api_key"
APP_KEY = load_conf_file "app_key"

require_relative "config"
require_relative "config_monitors"

endpoint = DATADOG_EU ? "https://api.datadoghq.eu" : nil
DOG = Dogapi::Client.new API_KEY, APP_KEY, nil, nil, true, nil, endpoint

require_relative "lib/monitor_defaults"
include MonitorDefaults
