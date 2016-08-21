class NewsItem < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, :date, :body, presence: true

  has_one :image_1, -> { where(attached_as: 'image_1') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image_1, allow_destroy: true

  has_one :image_2, -> { where(attached_as: 'image_2') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image_2, allow_destroy: true

  has_one :image_3, -> { where(attached_as: 'image_3') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image_3, allow_destroy: true

  def fae_display_field
    title
  end

end
