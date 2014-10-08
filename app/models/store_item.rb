class StoreItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :rating
end
