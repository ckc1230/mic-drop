Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registatrations: 'users/registrations'
  }

  root "shootouts#index"
  get "/pages/about", "page#show"
  resources :microphones, :shootouts, :manufacturers, :instruments, :users

end
