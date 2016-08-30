class CreateClassTypeWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :class_type_workouts do |t|
    	t.integer :class_type_id
    	t.integer :workout_id
    end
    add_column :workouts, :slug, :string
    remove_column :workouts, :class_type_id, :integer
  end
end
