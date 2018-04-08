class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :message, :course_id,  :user_id, :registration_id, :unread
end
