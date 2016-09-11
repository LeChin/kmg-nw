class AboutController < ApplicationController

  def index
    @page = AboutLandingPage.instance
    @page_title = 'What is Krav Maga? | Krav Maga Global Northwest'
  end

  def instructors_index
    @page = InstructorsLandingPage.instance
    @instructors = Instructor.live
    @page_title = 'Instructors | Krav Maga Global Northwest'
  end

  def instructors_detail
    @instructor = Instructor.live.find_by_slug(params[:slug])
    return show_404 if @instructor.blank?
    @page_title =  @instructor.name + ' | Krav Maga Global Northwest'
  end

  def membership
    @page = MembershipLandingPage.instance
    @pricings = @page.pricings
  end

end
