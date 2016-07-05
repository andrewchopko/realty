Rails.application.routes.draw do

  devise_for :users

  resources :houses do
    resources :callbacks
  end

  resources :feedbacks
  resources :searches

  get 'staticpage/index'
  get 'staticpage/contacts'

  root "staticpage#index"
end
