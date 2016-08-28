class RemoveDaysFromSchedules < ActiveRecord::Migration[5.0]
  def change
  	remove_column :schedules, :day, :string
  end
end
