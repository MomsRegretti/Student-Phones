class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :maker

  belongs_to :student
  belongs_to :app
end
