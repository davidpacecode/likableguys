class TimeStandard < ApplicationRecord
  validates :standard_type, :gender, :stroke, :distance, :course, presence: true
  validates :age_group, presence: true, if: -> { standard_type == "age_group" }
  validates :age, presence: true, if: -> { standard_type == "single_age" }

  # Ensure no duplicates
  validates :standard_type, uniqueness: {
    scope: [ :age_group, :age, :gender, :stroke, :distance, :course ],
    message: "Time standard already exists for this combination"
  }
end
