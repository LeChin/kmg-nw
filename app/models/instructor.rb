class Instructor < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :instructor_workouts
  has_many :workouts,
  	through: :instructor_workouts

  def fae_display_field
    name
  end

  def name
  	"#{ first_name } #{ last_name }"
  end

  acts_as_list add_new_at: :top
  default_scope { order(:position) }

end
