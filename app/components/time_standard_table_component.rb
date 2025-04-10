class TimeStandardTableComponent < ViewComponent::Base
  def initialize(standard_type:, course:, gender:, time_standards:)
    @standard_type = standard_type
    @course = course
    @gender = gender
    @time_standards = time_standards
  end
end
