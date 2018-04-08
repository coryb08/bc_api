class RemoveSatStartFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :sat_start, :integer
  end
end
