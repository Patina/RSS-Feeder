Rails.application.routes.draw do

  
#get 'dashboard', to: 'users#show'

  
  	resources :users do
  		member do
  		get "dashboard"
  	end
  end

	devise_for :users
  	resources :articles 
  root 'welcome#index'
end

