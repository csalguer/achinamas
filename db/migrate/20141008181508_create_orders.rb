class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :processed
      t.boolean :shipped
      t.string :tracking
      t.references :user, index: true
      t.string :to_address
      t.string :billing_address
      t.float :tax_shipping_cost
      t.boolean :shopping_cart

      t.timestamps
    end
  end
end
