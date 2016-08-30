class AddPositionToWorkouts < ActiveRecord::Migration[5.0]
  def change
  	add_column :workouts, :position, :integer
  end
end
