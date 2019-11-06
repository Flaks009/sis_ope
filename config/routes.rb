Rails.application.routes.draw do
  resources :formations
  resources :experiences
  resources :courses
  resources :candidatos
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'show', to: 'candidatos#show'
  get 'candidatos/index'
  root to:'candidatos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
