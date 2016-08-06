module Fae::FileConcern
  extend ActiveSupport::Concern

  def readonly?
    false
  end
end