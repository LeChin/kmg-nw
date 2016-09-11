class HomeGalleryItem < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :static_page, class_name: 'Fae::StaticPage'

  # has_one :image, -> { where(attached_as: 'image') },
  #   as: :imageable,
  #   class_name: '::Fae::Image',
  #   dependent: :destroy
  # accepts_nested_attributes_for :image, allow_destroy: true

  has_attached_file :image,
    storage: :s3,
    s3_credentials: "#{Rails.root}/config/aws.yml",
    bucket: 'kmg-nw-01'

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  scope :live, -> { where(live: true) }

  def fae_nested_parent
    :static_page
  end

end
