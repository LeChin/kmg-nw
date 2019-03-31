class UpdateMembershipMatrix < ActiveRecord::Migration[5.0]
  def change
    add_column :pricings, :corporate_price, :string
  end
end
