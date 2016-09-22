class ClassesController < ApplicationController

  def index
    @page = ClassLandingPage.instance
    @page_title = 'Classes | Krav Maga Global Northwest'
    @classes = Workout.for_landing
  end

  def detail
    @workout = Workout.live.find_by_slug(params[:slug])
    return show_404 if @workout.blank?
    @page_title =  @workout.title + ' | Classes | Krav Maga Global Northwest'
  end

  def schedule
    @page_title = 'Schedule | Krav Maga Global Northwest'
    @days = Day.all
    @workouts = Workout.live
  end

end
