class Workout < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :instructor_workouts
  has_many :instructors,
  	through: :instructor_workouts
  has_many :class_type_workouts
  has_many :class_types,
    through: :class_type_workouts
  has_many :schedules

  validates :title, :class_types, :slug, presence: true

  def fae_display_field
    title
  end

end
