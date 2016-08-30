class ClassType < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :class_type_workouts
  has_many :workouts,
    through: :class_type_workouts
  
  validates :name,
  	presence: true,
  	uniqueness: true

  def fae_display_field
    name
  end

  def self.for_fae_index
  	order(:name)
  end

end
