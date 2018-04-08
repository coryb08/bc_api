class RemoveSatEndFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :sat_end, :integer
  end
end
