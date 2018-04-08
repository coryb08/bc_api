class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :size
      t.integer :credits
      t.timestamps
    end
  end
end
