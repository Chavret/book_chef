Rails.application.routes.draw do
  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'


  resources :meals, only: [:index, :new, :show, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :edit, :update]

  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
