class AddPositionToPricings < ActiveRecord::Migration[5.0]
  def change
    add_column :pricings, :position, :integer
  end
end
