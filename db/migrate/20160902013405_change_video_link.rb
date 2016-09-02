class ChangeVideoLink < ActiveRecord::Migration[5.0]
  def change
  	change_column :media, :video_link, :string
  end
end
