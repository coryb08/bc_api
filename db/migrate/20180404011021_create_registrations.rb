class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.boolean :pending
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end


  end
end
