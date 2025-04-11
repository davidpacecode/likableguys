class Race < ApplicationRecord
  belongs_to :swim_meet

  validates :distance, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :stroke, presence: true

  validates :event_no, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :heat, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :lane, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
end
