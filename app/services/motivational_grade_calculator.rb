class MotivationalGradeCalculator
  def self.calculate(standard_type, race, age, gender, course, time)
    return nil unless time
    age_group = standard_type == "single_age" ? nil : age_group_for(age)
    standards = TimeStandard.where(
      standard_type: standard_type.to_s.downcase,
      distance: race.distance,
      stroke: race.stroke.to_s.downcase,
      course: course,
      age: age.to_i,
      gender: gender.to_s.downcase
    ).first

    return nil unless standards

    if time <= standards.aaaa
      "AAAA"
    elsif  time <= standards.aaa
      "AAA"
    elsif  time <= standards.aa
      "AA"
    elsif  time <= standards.a
      "A"
    elsif  time <= standards.bb
      "BB"
    elsif  time <= standards.b
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
