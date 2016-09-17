class MediaController < ApplicationController

  def photos
    @page = PhotoLandingPage.instance
    @page_title = 'Photo Album | Krav Maga Global Northwest'
    @photos = Medium.live.photos
  end

  def videos
    @page = PhotoLandingPage.instance
    @page_title = 'Videos | Krav Maga Global Northwest'
  end

end
