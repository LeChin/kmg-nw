class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.integer :type_id
      t.text :body
      t.boolean :appointment_only
      t.boolean :on_stage, default: true
      t.boolean :on_prod

      t.timestamps
    end

    add_index :workouts, :type_id
    add_index :workouts, :appointment_only
    add_index :workouts, :on_stage
    add_index :workouts, :on_prod
  end
end
