class ClassesController < ApplicationController

  def index
    @page = ClassLandingPage.instance
    @page_title = 'Classes | Krav Maga Global Northwest'
    @classes = Workout.for_landing
  end

  def detail
  end

  def schedule
  end

end
