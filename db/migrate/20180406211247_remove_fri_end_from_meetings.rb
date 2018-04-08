class RemoveFriEndFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :fri_end, :integer
  end
end
