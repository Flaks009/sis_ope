Rails.application.routes.draw do
  resources :formations
  resources :experiences
  resources :courses
  resources :candidatos do
    get :pdf_generate, :on => :member
  end
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'show', to: 'candidatos#show'
  get 'candidatos/index'
  get 'confirm', to: 'home#accept_term', as: 'confirm'
  root to:'candidatos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
