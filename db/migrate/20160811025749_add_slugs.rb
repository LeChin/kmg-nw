class AddSlugs < ActiveRecord::Migration[5.0]
  def change
  	add_column :instructors, :slug, :string
  end
end
