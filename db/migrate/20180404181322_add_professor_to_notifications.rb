class AddProfessorToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_reference :notifications, :professor, foreign_key: true
  end
end
