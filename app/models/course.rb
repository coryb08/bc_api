class Course < ApplicationRecord
  belongs_to :professor
  has_many :students, through: :schedules
  has_many :meetings
end
