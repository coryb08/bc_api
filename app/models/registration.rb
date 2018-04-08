class Registration < ApplicationRecord
  belongs_to :student
  belongs_to :professor, optional: true
  belongs_to :course

end
