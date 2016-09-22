class Day < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :day_schedules
  has_many :schedules,
  	through: :day_schedules

  default_scope { order(:created_at) }

  def fae_display_field
    name
  end

end
