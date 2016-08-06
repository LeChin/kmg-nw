class CreateInstructorWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :instructor_workouts do |t|
    	t.integer :instructor_id
    	t.integer :workout_id
    end
    add_index :instructor_workouts, :instructor_id
    add_index :instructor_workouts, :workout_id
  end
end
