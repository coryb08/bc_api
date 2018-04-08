class RemoveTuesStartFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :tues_start, :integer
  end
end
