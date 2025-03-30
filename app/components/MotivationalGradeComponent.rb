class MotivationalGradeComponent < ViewComponent::Base
  def initialize (standard_type:, race:, age:, gender:, final_time:)
    @standard_type = standard_type
    @race = race
    @age = age
    @gender = gender
    @final_time = final_time
    @grade = MotivationalGradeCalculator.calculate(standard_type, race, age, gender, final_time)
  end

  def variant
    case @grade
    when "AAAA", "AAA", "AA", "A"
      "success"
    when "BB", "B"
      "brand"
    else
      "neutral"
    end
  end

  def pulse
    case @grade
    when "AAAA", "AAA", "AA"
      "pulse"
    else
      ""
    end
  end
end
