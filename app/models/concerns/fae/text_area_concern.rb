module Fae::TextAreaConcern
  extend ActiveSupport::Concern

  def readonly?
    false
  end
end