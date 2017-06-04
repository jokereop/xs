Rails.application.routes.draw do


# /root
	
	root to: "home#index"

	  scope :path => "/:locale", :locale =>  /en|ru|de/ do

# /root/RU
		resources :users, only: [:new, :create]
		match '/signup',  to: 'users#new',            via: 'get'
		#get 'exit', to: 'sessions#destroy', as: :logout
		root "home#index"
		resources :posts, only: [:index, :show]
		resources :pages, only: [:index, :show]
		
		resources :sessions, only: [:new, :create, :destroy]
		match '/signin',  to: 'sessions#new',         via: 'get'
		match '/signout', to: 'sessions#destroy',     via: 'delete'

#  Для клиентов

		namespace :backoffice do

			resources :user_meta, only: [:index, :edit]
			resources :users, only: [:show, :edit, :update]

	 		root "cpanel#index"
		end

#  Для работников

		namespace :admin do

	    	resources :posts, except: [:show]
			resources :pages, except: [:show]

	 		root "cpanel#index"
		end

	  end


#resources :metaposts,only:[:index,:show]
	#devise_for :user,
	#			path: '',
	#			path_names: {
	 #						sign_in: 	'login',
	 #						sign_out: 	'logout',
	 #						sign_up: 	'registrate',
	 #						password: 	'pass'
	 #
	 #						}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

