class CreateHomeGalleryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :home_gallery_items do |t|
      t.boolean :on_stage, default: true
      t.boolean :on_prod
      t.integer :position
      t.integer :static_page_id

      t.timestamps
    end

    add_index :home_gallery_items, :on_stage
    add_index :home_gallery_items, :on_prod
    add_index :home_gallery_items, :position
    add_index :home_gallery_items, :static_page_id
  end
end
