Rails.application.routes.draw do
  get 'houses/index'

  get 'houses/new'

  get 'houses/create'

  get 'houses/destroy'

  get 'houses/update'

  get 'houses/edit'

  root "houses#index"
end
