class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.boolean :on_stage, default: true
      t.boolean :on_prod
      t.integer :position
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :rank
      t.text :bio
      t.text :quote
      t.string :quote_attribution

      t.timestamps
    end
    add_index :instructors, :on_stage
    add_index :instructors, :on_prod
    add_index :instructors, :position
  end

end
