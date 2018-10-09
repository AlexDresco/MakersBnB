Rails.application.routes.draw do

  resources :users
  get 'welcome/login' 
  get 'welcome/signup', to: 'welcome#signup'
  get 'welcome/index', to: 'welcome#index'



  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
