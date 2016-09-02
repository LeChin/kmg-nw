class HomeGalleryItem < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :static_page, class_name: 'Fae::StaticPage'

  has_one :image, -> { where(attached_as: 'image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  scope :live, -> { where(live: true) }

  def fae_nested_parent
    :static_page
  end

end
