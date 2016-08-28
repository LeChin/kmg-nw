class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :workout

  def fae_nested_parent
    :workout
  end

  def formatted_start_time
    start_time.strftime('%H:%M')
  end

  def formatted_end_time
    end_time.strftime('%H:%M')
  end

end
