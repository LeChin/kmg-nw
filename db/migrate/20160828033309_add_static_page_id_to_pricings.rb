class AddStaticPageIdToPricings < ActiveRecord::Migration[5.0]
  def change
  	add_column :pricings, :static_page_id, :integer
  end
end
