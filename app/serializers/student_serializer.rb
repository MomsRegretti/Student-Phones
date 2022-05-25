class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade

  has_many :phones
  has_many :apps
end
