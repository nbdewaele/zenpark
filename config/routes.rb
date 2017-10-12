Rails.application.routes.draw do

  get 'listing/index'

  get 'listing/new'

  get 'listing/create'

  get 'listing/listing_one'

  get 'listing/pricing_one'

  get 'listing/description_one'

  get 'listing/photo_upload_one'

  get 'listing/amenities_one'

  get 'listing/location_one'

  get 'listing/update'

	root 'pages#home'

  devise_for :users,
							path: '',
							path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
							controller: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

	resources :users, only: [:show]
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
