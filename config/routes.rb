Rails.application.routes.draw do

  
  	resources :users do
  		member do
  		get "dashboard"
  	end
  end

	devise_for :users
  	resources :articles 
  root 'welcome#index'
end

