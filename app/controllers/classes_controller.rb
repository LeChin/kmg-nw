class ClassesController < ApplicationController

  def index
    @page = ClassLandingPage.instance
    @page_title = 'Classes | Invictus Defense Academy'
    @classes = Workout.for_landing
  end

  def schedule
    @page_title = 'Schedule | Invictus Defense Academy'
    @days = Day.all
    @workouts = Workout.live
  end

end
