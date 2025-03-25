class StandardsTableComponent < ViewComponent::Base
  def initialize(standards: [], standard_type: nil)
    @standards = standards
    @standard_type = standard_type
  end
end
