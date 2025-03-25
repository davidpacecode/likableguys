class Race < ApplicationRecord
  belongs_to :swim_meet

  validates :event, presence: :true
  validates :course, presence: true, inclusion: { in: [ "SCY", "SCM", "LCM" ] }

  def time_improvement
    seed_time.present? && final_time.present? ? seed_time - final_time : nil
  end
end
