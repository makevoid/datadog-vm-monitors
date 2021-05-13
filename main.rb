require_relative "env"

def create_monitor(host:, name:, message:, monitor:)
  name    = "#{name} - #{host}"
  message = "#{message} on [{{host.name}}] - [{{host.ip}}]\r\n\n@makevoid @slack-devops"
  monitor = monitor % host
  tags    = default_tags
  options = default_options
  DOG.monitor(
    "metric alert",
    monitor,
    name:     name,
    message:  message,
    tags:     tags,
    options:  options,
  )
end

def create_monitors
  HOSTS.map do |host|
    MONITORS.each do |monitor_tag, monitor|
      name    = monitor.f :name
      message = monitor.f :message
      monitor = monitor.f :monitor
      create_monitor host: host, name: name, message: message, monitor: monitor
    end
  end
end

def main
  puts "creating monitors..."
  create_monitors
  puts "monitors created!"
end

main
