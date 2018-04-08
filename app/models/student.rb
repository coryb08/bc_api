class Student < ApplicationRecord
  has_many :courses, through: :schedules
  belongs_to :user
  has_many :registrations
  has_many :notifications
end
