class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.boolean :is_professor
      t.string :first_name
      t.string :last_name
      t.integer :year
      t.string :email
      t.string :uid

      t.timestamps
    end
  end
end
