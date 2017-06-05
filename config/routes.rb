Rails.application.routes.draw do

# /root
	get '/', to: redirect("/#{I18n.locale}")
	#root to: "home#index"
	#get "/(:lang)"=>"home#index", as: "root_with_lang"
	scope :path => "/:locale", :locale =>  /#{I18n.available_locales.join("|")}/  do

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

	get 'admin/metapost/new'=>'admin/metaposts#new', as: "new_admin_metapost"
	resources :posts, only: [:index, :show]
	resources :pages, only: [:index, :show]

	namespace :admin do
		resources :pages, except: [:show]
		resources :posts, except: [:show]
		resources :post_metum, except: [:show]
		# resources :metaposts
		root "cpanel#index"
	end

end
