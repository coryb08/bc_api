class RemoveWedEndFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :wed_end, :integer
  end
end
