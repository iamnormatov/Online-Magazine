class Categoriy < ApplicationRecord
    has_many :categoryers, dependent: :destroy
end
 