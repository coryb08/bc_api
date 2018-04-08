class AddRegistrationToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_reference :notifications, :registration, foreign_key: true
  end
end
