class TagsTimeCutTabGroupComponent < ViewComponent::Base
  def initialize(gender:, tags_time_cuts:)
    @gender = gender
    @tags_time_cuts = tags_time_cuts
  end
end
