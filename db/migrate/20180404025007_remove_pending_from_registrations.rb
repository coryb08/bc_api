class RemovePendingFromRegistrations < ActiveRecord::Migration[5.1]
  def change
    remove_column :registrations, :pending, :boolean
  end
end
