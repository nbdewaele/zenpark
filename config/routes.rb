Rails.application.routes.draw do

	root 'pages#home'

  devise_for :users,
							path: '',
							path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
							controller: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

	resources :users, only: [:show]
	resources :rooms, except: [:edit] do
		member do
			get 'listing'
			get 'pricing'
			get 'summary'
			get 'photo_upload'
			get 'amenities'
			get 'location'
		end
		resources :photos, only: [:create, :destroy]
		resources :reservations, only: [:create]
	end
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
