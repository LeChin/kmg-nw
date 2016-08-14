class RemoveOnStageAddLive < ActiveRecord::Migration[5.0]
  def change
    remove_column :home_gallery_items, :on_stage, :boolean
    rename_column :home_gallery_items, :on_prod, :live
    remove_column :instructors, :on_stage, :boolean
    rename_column :instructors, :on_prod, :live
    remove_column :media, :on_stage, :boolean
    rename_column :media, :on_prod, :live
    remove_column :news_items, :on_stage, :boolean
    rename_column :news_items, :on_prod, :live
    remove_column :workouts, :on_stage, :boolean
    rename_column :workouts, :on_prod, :live
  end
end
