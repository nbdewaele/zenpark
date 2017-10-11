Rails.application.routes.draw do

	root 'pages#home'

  devise_for :users,
							path: '',
							path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
							controller: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

	resources :users, only: [:show]
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
