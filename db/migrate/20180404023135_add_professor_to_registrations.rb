class AddProfessorToRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_reference :registrations, :professor, foreign_key: true
  end
end
