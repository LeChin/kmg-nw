class NewsGalleryItem < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :news_item

  has_one :image, -> { where(attached_as: 'image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  acts_as_list add_new_at: :top
  default_scope { order(:position) }

  def fae_display_field
    name
  end

  def fae_nested_parent
    :news_item
  end

end
