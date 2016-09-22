class NewsController < ApplicationController

  def index
    @page_title = 'News + Events | Krav Maga Global Northwest'
    @news_items = NewsItem.live.ordered_by_date
  end

  def details
    @news_item = NewsItem.live.find_by_slug(params[:slug])
    return show_404 if @news_item.blank?
    @page_title =  @news_item.name + ' | News + Events | Krav Maga Global Northwest'
  end

end
