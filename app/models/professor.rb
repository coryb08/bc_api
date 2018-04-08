class Professor < ApplicationRecord
  belongs_to :user
  has_many :courses
  has_many :notifications
end
