# frozen_string_literal: true

class TagsTimeComponent < ViewComponent::Base
  def initialize(gender:, age:, distance:, stroke:, course:, time_type:)
    @gender = gender
    @age = age.to_i
    @distance = distance.to_i
    @stroke = stroke
    @course = course
    @time_type = time_type

    @tags_time_cut = TagsTimeCut.find_by("gender = ? and age_group = ? and distance = ? and stroke = ? and course = ?",
      @gender, age_group_for(@age), @distance, @stroke, @course)
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
