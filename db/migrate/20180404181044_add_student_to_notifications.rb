class AddStudentToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_reference :notifications, :student, foreign_key: true
  end
end
