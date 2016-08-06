class ClassType < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :workouts
  
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
