class HomeGalleryItem < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :static_page, class_name: 'Fae::StaticPage'

  has_one :image, -> { where(attached_as: 'image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy,
    storage: :s3,
    s3_credentials: "#{Rails.root}/config/aws.yml",
    bucket: 'kmg-nw-01'
  accepts_nested_attributes_for :image, allow_destroy: true

  scope :live, -> { where(live: true) }

  def fae_nested_parent
    :static_page
  end

end
