class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :message
      t.boolean :unread
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
