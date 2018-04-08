class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.integer :mon_start
      t.integer :tues_start
      t.integer :wed_start
      t.integer :thurs_start
      t.integer :fri_start
      t.integer :sat_start
      t.integer :mon_end
      t.integer :tues_end
      t.integer :wed_end
      t.integer :thurs_end
      t.integer :fri_end
      t.integer :sat_end
      t.references :course, foreign_key: true
    end
  end
end
