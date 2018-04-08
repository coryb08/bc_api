class RemoveMonStartFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :mon_start, :integer
  end
end
