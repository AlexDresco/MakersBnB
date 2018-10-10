Rails.application.routes.draw do

  get 'welcome/index', to: 'welcome#index'  
  get 'users/new', to: 'users#new' # implicit route
  post 'users', to: 'users#create', name: :users_path # 'named routes' default path form helper would use 
  # resources :users
  # get 'welcome/signup', to: 'welcome#signup' -- replaced by users/new , removed corresponding view and controller
  get 'welcome/login' 


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
