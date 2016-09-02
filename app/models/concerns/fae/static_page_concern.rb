module Fae
  module StaticPageConcern
    extend ActiveSupport::Concern

    included do
      has_many :pricings
      has_many :home_gallery_items
    end

  end
end