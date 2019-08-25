class ClockEvent < ApplicationRecord

  belongs_to :teacher
  scope :clocked_in, -> { where(status: 1) }
end
