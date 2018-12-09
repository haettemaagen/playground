Rails.application.routes.draw do
  root 'pages#home'
  resources :listings, only: [:new, :create]
end
