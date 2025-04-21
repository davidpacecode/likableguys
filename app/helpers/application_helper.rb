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

  # Calculate the CMC's age
  def cmc_age
    render(CmcAgeComponent.new)
  end

  # get the TAGS time for a set of parameters. It's possible
  # this should be less broadly scoped but leaving here
  # for now since I think it's needed in Races, SwimMeets, and
  # maybe elsewhere
  def tags_time(gender:, age:, distance:, stroke:, course:, time_type:)
    render(
      TagsTimeComponent.new(
        gender: gender,
        age: age,
        distance: distance,
        stroke: stroke,
        course: course,
        time_type: time_type
      )
    )
  end
end
