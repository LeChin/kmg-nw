class AboutLandingPage < Fae::StaticPage

  @slug = 'about_landing'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      hero_image: { type: Fae::Image },
      quote: { type: Fae::TextField },
      quote_attribution: { type: Fae::TextField }
    }
  end

end
