class Rating < ActiveRecord::Base
  belongs_to :user
  has_one :store_item
end
