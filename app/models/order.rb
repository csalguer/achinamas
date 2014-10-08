class Order < ActiveRecord::Base
  belongs_to :user
  has_many :store_items
end
