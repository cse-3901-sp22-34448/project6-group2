Rails.application.routes.draw do
  get "details/feedback"
  get "details/instructor"
  get "details/student"
  root "presentations#index"
  resources :presentations
end
