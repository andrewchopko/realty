Rails.application.routes.draw do

  devise_for :users

  resources :houses do
    resources :callbacks
  end
  resources :feedbacks
  resources :searches

  get 'staticpage/index'
  get 'staticpage/contacts'

  match 'feedbacks/:id/valid', :to => 'feedbacks#public_update', :as => 'feedback_val', :via => :post

  root "staticpage#index"
end
