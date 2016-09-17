class Medium < ApplicationRecord
  include Fae::BaseModelConcern
  acts_as_list add_new_at: :top

  has_one :image, -> { where(attached_as: 'image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  validates :media_type, presence: true

  default_scope { order(:position) }
  scope :photos, -> { where(media_type: 'Photo') }
  scope :videos, -> { where(media_type: 'Video') }
  scope :featured_video, -> { videos.where(featured_on_home: true).first }
  scope :live, -> { where(live: true) }

  def fae_display_field
  	name
  end

end
