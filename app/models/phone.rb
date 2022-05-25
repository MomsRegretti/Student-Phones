class Phone < ApplicationRecord
  belongs_to :student
  belongs_to :app
end
