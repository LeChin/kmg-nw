class PagesController < ApplicationController

  def home
    @page = HomePage.instance
    @page_title = 'Home'

    @gallery_items = @page.home_gallery_items.live
    @featured_video = Medium.featured_video
    @days = Day.all
    @workouts = Workout.live
  end

end
