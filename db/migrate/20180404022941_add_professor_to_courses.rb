class AddProfessorToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :professor, foreign_key: true
  end
end
