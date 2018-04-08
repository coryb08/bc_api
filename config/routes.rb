Rails.application.routes.draw do
  scope :api do
    resources :professors
    resources :registrations
    resources :schedules
    resources :notifications
    resources :users
    resources :meetings
    resources :courses
    resources :students
  end
end
