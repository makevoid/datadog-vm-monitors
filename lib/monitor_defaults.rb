module MonitorDefaults

  def default_tags
    []
  end

  def default_options
    {
      "notify_no_data"    => true,
      "no_data_timeframe" => 20,
    }
  end

end
