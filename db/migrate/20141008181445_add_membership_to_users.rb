class AddMembershipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :membership, :boolean
  end
end
