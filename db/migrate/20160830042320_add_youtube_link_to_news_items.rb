class AddYoutubeLinkToNewsItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :news_items, :youtube_link, :text
  end
end
