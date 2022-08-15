class Categoryer < ApplicationRecord
    belongs_to :categoriy
    has_many :product_categories
end
