class AddEndToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :end, :integer
  end
end
