module Fae::ImageConcern
  extend ActiveSupport::Concern

  def readonly?
    false
  end
end