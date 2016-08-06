class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.date :date
      t.string :media_type
      t.string :video_link
      t.integer :position
      t.boolean :on_stage, default: true
      t.boolean :on_prod

      t.timestamps
    end

    add_index :media, :date
    add_index :media, :position
    add_index :media, :on_stage
    add_index :media, :on_prod
  end
end
