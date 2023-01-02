class ProductCategory < ApplicationRecord
  belongs_to :categoryer
  has_many :products
end
 