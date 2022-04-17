Rails.application.routes.draw do
  root "presentations#index"
  get "/presentations", to: "presentations#index"
end
