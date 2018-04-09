class AddDayToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :day, :string
  end
end
