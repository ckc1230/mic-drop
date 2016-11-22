Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registatrations: 'users/registrations'
  }

  root "shootouts#index"
  resources :microphones, :shootouts, :manufacturers, :instruments

end
