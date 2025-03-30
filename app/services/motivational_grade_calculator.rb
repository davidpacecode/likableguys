class MotivationalGradeCalculator
  def self.calculate(standard_type, race, age, gender, final_time)
    age_group = standard_type == "single_age" ? nil : age_group_for(age)
    standards = UsaSwimmingTimeStandard.where(
      standard_type: standard_type.to_s.downcase,
      event: race.event.to_s.downcase,
      course: race.course.to_s.downcase,
      age: age.to_i,
      gender: gender.to_s.downcase
    ).first

    return nil unless standards

    if final_time <= standards.aaaa
      "AAAA"
    elsif  final_time <= standards.aaa
      "AAA"
    elsif  final_time <= standards.aa
      "AA"
    elsif  final_time <= standards.a
      "A"
    elsif  final_time <= standards.bb
      "BB"
    elsif  final_time <= standards.b
      "B"
    else
     "C"
    end
  end

  def self.age_group_for(age)
    case age
    when 17, 18
      "17-18"
    when 15, 16
      "15-16"
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
