Rails.application.routes.draw do

  devise_for :users
  resources :houses
  resources :feedbacks

  get 'staticpage/index'
  get 'staticpage/contacts'

  root "staticpage#index"
end
