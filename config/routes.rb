Rails.application.routes.draw do
  resources :students

  get 'home/index'
  
  root 'home#index'
  get 'home/send_mail', to: 'home#send_mail'
  #users GET  /users(.:format) users#index
  resources :photos
  get 'users/index', to: 'users#index'

  get 'users/send_mail', to: 'users#send_mail'

  get 'images/index', to: 'images#index'

  get 'images/show', to: 'images#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
