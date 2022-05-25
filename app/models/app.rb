class App < ApplicationRecord
    has_many :phones, dependent: :destroy
    has_many :students, through: :phones

    validates :price, numericality: {greater_than_or_equal_to: 0}
end
