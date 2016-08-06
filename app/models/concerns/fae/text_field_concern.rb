module Fae::TextFieldConcern
  extend ActiveSupport::Concern

  def readonly?
    false
  end
end