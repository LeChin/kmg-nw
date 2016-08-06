class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :workout_id
      t.integer :day_id
      t.time :start_time
      t.time :end_time

      t.timestamps
    end

    add_index :schedules, :workout_id
    add_index :schedules, :day_id
    add_index :schedules, :start_time
    add_index :schedules, :end_time
  end
end
