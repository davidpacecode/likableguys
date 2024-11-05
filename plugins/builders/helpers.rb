class Builders::Helpers < SiteBuilder
  def build
    helper :get_motivational_times do |age, gender, age_type, distance, stroke, event_type|

      member = site.data.motivational_times.find do |m|
        m.age == age &&
        m.gender == gender &&
        m.age_type == age_type &&
        m.distance == distance &&
        m.stroke == stroke &&
        m.event_type == event_type
      end

      member ? [member.aaaa, member.aaa, member.aa, member.a, member.bb, member.b] : nil

    end
  end

  def build
    helper :convert_to_seconds do |time|

      if time.include? ":"
        mins,secs = time.split(":")
        time = mins.to_f * 60 + secs.to_f
      else
        time.to_f
      end
    end
  end

end


