class CreateNewsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :news_items do |t|
      t.string :title
      t.date :date
      t.text :intro
      t.text :body
      t.boolean :on_stage, default: true
      t.boolean :on_prod

      t.timestamps
    end

    add_index :news_items, :date
    add_index :news_items, :on_stage
    add_index :news_items, :on_prod
  end
end
