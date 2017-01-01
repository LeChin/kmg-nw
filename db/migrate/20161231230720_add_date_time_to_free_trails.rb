class AddDateTimeToFreeTrails < ActiveRecord::Migration[5.0]
  def change
    add_column :free_trial_requests, :trial_time, :string
    add_column :free_trial_requests, :trial_day, :string
  end
end
