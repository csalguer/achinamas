class AddFlaggedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :flagged, :boolean
  end
end
