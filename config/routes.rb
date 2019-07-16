Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  #users GET  /users(.:format) users#index

  get 'users/index', to: 'users#index'

  get 'home/show', to: 'home#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
