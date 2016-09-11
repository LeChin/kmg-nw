class Instructor < ApplicationRecord
  include Fae::BaseModelConcern
  acts_as_list add_new_at: :top

  has_many :instructor_workouts
  has_many :workouts,
    through: :instructor_workouts

  has_one :hero_image, -> { where(attached_as: 'hero_image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :hero_image, allow_destroy: true

  has_one :bio_image, -> { where(attached_as: 'bio_image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :bio_image, allow_destroy: true

  validates :first_name, :last_name, :slug, presence: true

  def fae_display_field
    name
  end

  def name
    "#{ first_name } #{ last_name }"
  end

  default_scope { order(:position) }
  scope :live, -> { where(live: true) }

end
