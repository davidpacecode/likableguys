class TimeStandardTabGroupComponent < ViewComponent::Base
  def initialize(standard_type:, course:, time_standards:)
    @standard_type = standard_type
    @course = course
    @time_standards = time_standards
  end
end
