class RemoveThursEndFromMeetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :meetings, :thurs_end, :integer
  end
end
