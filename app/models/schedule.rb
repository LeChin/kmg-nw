class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :workout
  has_many :day_schedules
  has_many :days,
    through: :day_schedules

  scope :ordered_by_time, -> { order(:start_time) }

  def fae_nested_parent
    :workout
  end

  def formatted_start_time
    start_time.strftime('%I:%M %p')
  end

  def formatted_end_time
    end_time.strftime('%I:%M %p')
  end

  def formatted_total_time
    start_time.strftime('%l:%M') + ' - ' + end_time.strftime('%l:%M %p')
  end

  def formatted_days
    days.pluck(:name).to_sentence
  end

end
