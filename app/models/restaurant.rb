class Restaurant < ApplicationRecord
  has_many :reviews

  TOP_RESTAURANT_MINIMUM_NOTATION = 4
end
