class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true
      t.integer :value
      t.text :review

      t.timestamps
    end
  end
end
