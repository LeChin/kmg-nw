class CreatePricings < ActiveRecord::Migration[5.0]
  def change
    create_table :pricings do |t|
      t.string :level
      t.string :general_price
      t.string :public_safety_price
      t.string :time_free

      t.timestamps
    end
  end
end
