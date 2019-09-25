Rails.application.routes.draw do
  resources :candidatos
  devise_for :users
  get 'candidatos/index'
  root to:'candidatos#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
