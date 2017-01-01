class FreeTrialRequest < ApplicationRecord
  include Fae::BaseModelConcern
  attr_accessor :secondary_email
  # Honeypot field = secondary_email

  validates :name, :workout, :trial_time, :trial_day,
            presence: { message: 'Required Field' }

  validates :email,
            format: {
              with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i,
              message: '',
              multiline: true
            },
            presence: { message: '' }

  def fae_display_field
    name
  end

  def workout_name
    Workout.find_by_id(workout).title
  end

  def time_name
    Schedule.find_by_id(trial_time).formatted_start_time
  end

  def day_name
    Day.find_by_id(trial_day).name
  end

end
