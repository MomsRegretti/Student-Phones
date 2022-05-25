class AppSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  has_many :students
end
