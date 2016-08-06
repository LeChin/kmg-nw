class Workout < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :instructor_workouts
  has_many :instructors,
  	through: :instructor_workouts
  belongs_to :class_type

  def fae_display_field
    title
  end

end
