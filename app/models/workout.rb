class Workout < ApplicationRecord
  include Fae::BaseModelConcern
  acts_as_list add_new_at: :top

  has_many :instructor_workouts
  has_many :instructors,
    through: :instructor_workouts
  has_many :class_type_workouts
  has_many :class_types,
    through: :class_type_workouts
  has_many :schedules
  has_many :days,
    through: :schedules

  validates :title, :class_types, :slug, presence: true

  default_scope { order(:position) }
  scope :live, -> { where(live: true) }
  scope :for_landing, -> { live.where(show_on_landing: true) }

  def fae_display_field
    title
  end

  def class_types_list
    class_types.collect{ |c| c.name }.join(', ')
  end

end
