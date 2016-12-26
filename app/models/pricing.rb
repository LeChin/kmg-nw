class Pricing < ApplicationRecord
  include Fae::BaseModelConcern
  acts_as_list add_new_at: :top

  belongs_to :static_page, class_name: 'Fae::StaticPage'

  default_scope { order(:position) }

  def fae_nested_parent
    :static_page
  end

end
