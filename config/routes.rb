Rails.application.routes.draw do
  root 'pages#home'
  resources :listings, only: [:index, :show]
end
