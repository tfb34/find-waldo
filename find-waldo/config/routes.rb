Rails.application.routes.draw do
  #get 'photographs/show'
  resources :photographs, only: [:show, :index]
  get 'welcome/index'

  #get '/characters/:id',  to: 'characters#show'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
