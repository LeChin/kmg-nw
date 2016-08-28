class RemoveNewsGalleryAndDays < ActiveRecord::Migration[5.0]
  def change
  	drop_table :days
  	drop_table :news_gallery_items
  end
end
