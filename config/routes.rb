Rails.application.routes.draw do

  resources :houses
  resources :feedbacks
  resources :staticpage
  root "staticpage#index"
end
