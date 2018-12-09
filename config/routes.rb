Rails.application.routes.draw do
  root 'pages#home'
  get 'bootstrap', to: 'pages#bootstrap', as: :bootstrap
  get 'cssgrid', to: 'pages#cssgrid', as: :cssgrid
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :listings, only: [:index, :show]
end
