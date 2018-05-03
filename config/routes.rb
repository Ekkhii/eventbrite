Rails.application.routes.draw do
	
  	get 'events/new', to: 'events#new'
 	post 'events/create', to: 'events#create'
 	get '/events', to: 'events#index'
 	get '/events/:id', to: 'events#show'

  	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
 	delete '/logout',  to: 'sessions#destroy'

	root 'static_pages#home'

	resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
