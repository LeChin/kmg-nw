class ClassesController < ApplicationController

  def index
    @page = ClassLandingPage.instance
    @page_title = 'Classes | Krav Maga Global Northwest'
    @classes = Workout.for_landing
  end

  def schedule
    @page_title = 'Schedule | Krav Maga Global Northwest'
    @days = Day.all
    @workouts = Workout.live
  end

end
