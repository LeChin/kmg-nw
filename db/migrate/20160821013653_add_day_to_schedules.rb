class AddDayToSchedules < ActiveRecord::Migration[5.0]
  def change
  	add_column :schedules, :day, :string
  	remove_column :schedules, :day_id, :integer
  end
end
