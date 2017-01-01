class CreateFreeTrialRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :free_trial_requests do |t|
      t.string :name
      t.string :email
      t.text :comments
      t.string :workout

      t.timestamps
    end
  end
end
