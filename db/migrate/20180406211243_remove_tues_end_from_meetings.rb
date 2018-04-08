class RemoveTuesEndFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :tues_end, :integer
  end
end
