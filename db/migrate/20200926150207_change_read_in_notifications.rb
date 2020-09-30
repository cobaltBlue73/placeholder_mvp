class ChangeReadInNotifications < ActiveRecord::Migration[6.0]
  def change
    remove_column :notifications, :read, :boolean
    add_column :notifications, :read, :boolean, default: false
  end
end
