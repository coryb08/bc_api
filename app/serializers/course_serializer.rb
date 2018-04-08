class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :professor_id
  has_many :meetings

end
