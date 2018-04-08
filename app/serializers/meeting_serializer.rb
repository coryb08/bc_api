class MeetingSerializer < ActiveModel::Serializer
  def attributes(*args)
    object.attributes.symbolize_keys.delete_if{|k,v| v == nil || k == :id || k == :course_id}
  end
end
