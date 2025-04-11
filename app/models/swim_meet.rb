class SwimMeet < ApplicationRecord
  has_rich_text :description
  has_many :races, dependent: :destroy

  validates :venue, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :course, inclusion: { in: %w[scy scm lcm], message: "must be scy, scm, or lcm" }
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
