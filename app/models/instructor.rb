class Instructor < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    
  end

  acts_as_list add_new_at: :top
  default_scope { order(:position) }

end
