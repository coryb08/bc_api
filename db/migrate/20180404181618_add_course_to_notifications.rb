class AddCourseToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_reference :notifications, :course, foreign_key: true
  end
end
