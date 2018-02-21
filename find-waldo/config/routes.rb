Rails.application.routes.draw do
  get 'users/new'

  get 'user/new'

  #get 'photographs/show'
  resources :photographs, only: [:show, :index]
  resources :users
  get 'welcome/index'

  #get '/characters/:id',  to: 'characters#show'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
