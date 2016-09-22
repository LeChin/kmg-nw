class AddSlugToNewsItem < ActiveRecord::Migration[5.0]
  def change
    add_column :news_items, :slug, :string
  end
end
