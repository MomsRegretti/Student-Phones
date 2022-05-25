class Student < ApplicationRecord
    has_many :phones, dependent: :destroy
    has_many :apps, through: :phones

    validates :grade, numericality: {greater_than_or_equal_to: 9, less_than_or_equal_to: 12}
end
