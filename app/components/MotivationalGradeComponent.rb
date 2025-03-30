class MotivationalGradeComponent < ViewComponent::Base
  def initialize (standard_type:, race:, age:, gender:, time:)
    @standard_type = standard_type
    @race = race
    @age = age
    @gender = gender
    @time = time
    @grade = MotivationalGradeCalculator.calculate(standard_type, race, age, gender, time)
  end

  def variant
    case
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
