Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/help'

  namespace :static_pages, path: nil do
    get :home
    get :help
  end
  resources :posts do
  	resources :comments, only: [:create, :destroy]
	end

  root 'static_pages#home'

end
