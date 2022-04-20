Rails.application.routes.draw do
  root "presentations#index"
  resources :presentations
  resources :feedbacks
  resources :instructors
  resources :students
end
