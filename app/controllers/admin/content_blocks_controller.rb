module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [HomePage, AboutLandingPage, InstructorsLandingPage, ClassLandingPage, MembershipLandingPage, ClassScheduleLandingPage]
    end
  end
end
