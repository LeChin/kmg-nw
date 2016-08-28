class Pricing < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :static_page, class_name: 'Fae::StaticPage'

  def fae_nested_parent
    :static_page
  end

end
