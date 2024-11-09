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

    helper :convert_to_seconds do |time|

      if time.include? ":"
        mins,secs = time.split(":")
        time = mins.to_f * 60 + secs.to_f
      else
        time.to_f
      end

    end

    helper :get_grade do |age, gender, age_type, distance, stroke, event_type, time|

      times = helpers.get_motivational_times(age, gender, age_type, distance, stroke, event_type)
     
      if times.nil?
        return nil
      end

      aaaa = helpers.convert_to_seconds(times[0])
      aaa = helpers.convert_to_seconds(times[1])
      aa = helpers.convert_to_seconds(times[2])
      a = helpers.convert_to_seconds(times[3])
      bb = helpers.convert_to_seconds(times[4])
      b = helpers.convert_to_seconds(times[5])

      case helpers.convert_to_seconds(time)
      when 0..aaaa
        grade = "AAAA"
      when aaaa..aaa
        grade = "AAA"
      when aaa..aa
        grade = "AA"
      when aa..a
        grade = "A"
      when a..bb
        grade = "BB"
      when bb..b
        grade = "B"
      else
        grade = "C"
      end

      grade

    end

  end


end


