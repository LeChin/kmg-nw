class CreateNewsGalleryItemsRemoveHomeGalleryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :news_gallery_items do |t|
      t.string :name
      t.boolean :live
      t.integer :news_item_id
      t.integer :position

      t.timestamps
    end
  end
end
