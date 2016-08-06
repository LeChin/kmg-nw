class PhotoLandingPage < Fae::StaticPage

  @slug = 'photo_landing'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      headline: { type: Fae::TextField }
    }
  end

end
