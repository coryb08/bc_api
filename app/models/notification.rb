class Notification < ApplicationRecord
  belongs_to :student
  belongs_to :professor
  belongs_to :course
  belongs_to :user
  belongs_to :registration
end
