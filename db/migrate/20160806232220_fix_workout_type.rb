class FixWorkoutType < ActiveRecord::Migration[5.0]
  def change
  	rename_column :workouts, :type_id, :class_type_id
  end
end
