Rails.application.routes.draw do
  #get 'welcome/index'
  #cria as 7 rotas para coins
  resources :coins
  
  root to: 'welcome#index'
  
  #exemplo 
  #get '/patients/:id', to: 'patients#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
