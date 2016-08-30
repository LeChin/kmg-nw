class AddBooleanToWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :workouts, :show_on_landing, :boolean
  end
end
