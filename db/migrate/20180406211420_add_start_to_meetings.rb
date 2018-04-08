class AddStartToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :start, :integer
  end
end
