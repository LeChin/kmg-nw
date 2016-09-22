class PagesController < ApplicationController

  def home
    @page = HomePage.instance
    @page_title = 'Home'

    @gallery_items = @page.home_gallery_items.live
    @video = Medium.live.videos.featured.first
    @days = Day.all
  end

end
