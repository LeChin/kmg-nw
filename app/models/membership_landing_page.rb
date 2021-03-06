class MembershipLandingPage < Fae::StaticPage

  @slug = 'membership_landing'

  has_many :pricings, foreign_key: 'static_page_id'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      headline: { type: Fae::TextField },
      body: { type: Fae::TextArea },
      benefits: { type: Fae::TextArea },
      public_safety_info: { type: Fae::TextArea },
      corporate_rates: { type: Fae::TextArea },
      pdf: { type: Fae::File }
    }
  end

end
