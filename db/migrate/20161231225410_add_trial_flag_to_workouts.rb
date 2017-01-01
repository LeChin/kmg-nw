class AddTrialFlagToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :trial_class, :boolean, default: false
  end
end
