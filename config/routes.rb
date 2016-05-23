Rails.application.routes.draw do

  resources :houses
  resources :feedbacks

  get 'staticpage/index'
  get 'staticpage/contacts'
  
  root "staticpage#index"
end
