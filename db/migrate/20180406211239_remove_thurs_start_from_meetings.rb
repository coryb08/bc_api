class RemoveThursStartFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :thurs_start, :integer
  end
end
