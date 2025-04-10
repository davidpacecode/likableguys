module ApplicationHelper
  def format_time_standard(time)
    if time.to_f > 60.0
      minutes = time.to_i / 60
      seconds = time.to_i % 60
      hundredths = ((time.to_f - time.to_i) * 100).round
      format("%d:%02d.%02d", minutes, seconds, hundredths)
    else
      time
    end
  end
end
