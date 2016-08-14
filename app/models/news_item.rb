class NewsItem < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :news_gallery_items

  validates :title, :date, :body, presence: true

  def fae_display_field
    title
  end

end
