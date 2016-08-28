class Day < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :schedule

  default_scope { order(:created_at) }

  def fae_display_field
    name
  end

end
