Rails.application.routes.draw do
  # get 'ingredients/index'
  # get 'ingredients/show'
  # get 'ingredients/new'
  # get 'ingredients/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
    end
  # get 'cocktails'

  # get 'cocktails/:id'

  # get 'cocktails/new'
  # post 'cocktails'
end
