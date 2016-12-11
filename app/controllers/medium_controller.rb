class MediumController < ApplicationController

  def photos
    @page = PhotoLandingPage.instance
    @page_title = 'Photo Album | Invictus Defense Academy'
    @photos = Medium.live.photos
  end

  def videos
    @page = PhotoLandingPage.instance
    @page_title = 'Videos | Invictus Defense Academy'
    @videos = Medium.live.videos
  end

end
