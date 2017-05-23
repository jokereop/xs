Rails.application.routes.draw do

  resources :users
  		#resources :metaposts,only:[:index,:show]


	

	
	  scope :path => "/:locale", :locale =>  /en|ru|de/ do

		root "home#index"
		resources :posts, only: [:index, :show]
		resources :pages, only: [:index, :show]


#  Для клиентов

		namespace :backoffice do

			resources :user_meta, only: [:index, :edit]

	 		root "cpanel#index"
		end

#  Для работников

		namespace :admin do

	    	resources :posts, except: [:show]
			resources :pages, except: [:show]

	 		root "cpanel#index"
		end

	  end

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

