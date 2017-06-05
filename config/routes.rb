Rails.application.routes.draw do

  resources :metaposts,only:[:index,:show]


	resources :posts, only: [:index, :show]
	resources :pages, only: [:index, :show]
	
	namespace :admin do
 		resources :pages, except: [:show]
 		resources :posts, except: [:show]
 		resources :post_metum, except: [:show]
   	resource :metapost

		root "cpanel#index"
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

