class AddUserPersonalInfoToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :firstname, :string
  	 add_column :users, :lastname, :string
  	 add_column :users, :address, :string
  	 add_column :users, :phonenumber, :string
  	 add_column :users, :is_mobile, :boolean
  end
end
