class AddForHomeFlag < ActiveRecord::Migration[5.0]
  def change
  	add_column :media, :featured_on_home, :boolean, default: false
  end
end
