Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registatrations: 'users/registrations'
  }

  root "shootouts#index"
  get "/pages/about", "pages#about"
  resources :microphones, except: [:edit, :update] 
  resources :shootouts, except: [:edit, :update]
  resources :manufacturers, :instruments, :users
  resources :fav_shootouts, only: :create

end
