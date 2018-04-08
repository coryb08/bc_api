class RegistrationSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :student
  has_one :professor
  has_one :course
  has_many :meetings
end
