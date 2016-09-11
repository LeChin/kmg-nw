class AboutController < ApplicationController

  def index
    @page = AboutLandingPage.instance
  end

  def instructors_index
    @page = InstructorsLandingPage.instance
    @instructors = Instructor.live
  end

  def instructors_detail
  end

  def membership
  end

end
