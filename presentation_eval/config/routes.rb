Rails.application.routes.draw do
  root "presentations#index"
  resources :presentations
end
