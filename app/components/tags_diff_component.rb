class TagsDiffComponent < ViewComponent::Base
  def initialize(gender:, age:, race:, time_type:)
    @gender = gender
    @age = age.to_i
    @race = race
    @time_type = time_type

    @tags_time_cut = TagsTimeCut.find_by("gender = ? and age_group = ? and distance = ? and stroke = ? and course = ?",
      @gender, age_group_for(@age), @race.distance, @race.stroke, @race.course)
  end

  def age_group_for(age)
    case age
    when 13, 14
      "13-14"
    when 11, 12
      "11-12"
    when 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
      "10_and_under"
    else
      "error"
    end
  end
end
