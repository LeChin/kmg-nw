class CreateDaySchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :day_schedules do |t|
    	t.integer :day_id
    	t.integer :schedule_id
    end
    remove_column :days, :schedule_id, :integer
  end
end
