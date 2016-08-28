module Fae
  module StaticPageConcern
    extend ActiveSupport::Concern

    included do
      has_many :pricings
    end

  end
end