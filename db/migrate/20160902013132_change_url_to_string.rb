class ChangeUrlToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :news_items, :youtube_link, :string
  end
end
