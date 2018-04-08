class RemoveWedStartFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :wed_start, :integer
  end
end
