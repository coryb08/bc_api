class RemoveFriStartFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :fri_start, :integer
  end
end
