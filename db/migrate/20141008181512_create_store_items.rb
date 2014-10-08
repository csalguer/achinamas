class CreateStoreItems < ActiveRecord::Migration
  def change
    create_table :store_items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :order, index: true
      t.references :rating, index: true

      t.timestamps
    end
  end
end
