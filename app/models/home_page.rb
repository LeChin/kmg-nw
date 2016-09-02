class HomePage < Fae::StaticPage

  @slug = 'home'

  has_many :home_gallery_items, foreign_key: 'static_page_id'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      headline: { type: Fae::TextField },
      subhead: { type: Fae::TextField }
    }
  end

end
