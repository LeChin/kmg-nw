module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [HomePage, AboutLandingPage, InstructorsLandingPage, ClassLandingPage, MembershipLandingPage, ClassScheduleLandingPage, PhotoLandingPage, ContactInfoPage]
    end
  end
end
