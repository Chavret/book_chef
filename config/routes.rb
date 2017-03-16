Rails.application.routes.draw do
  devise_for :users,
     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'

  resources :bookings, only: [:index, :edit, :update]
  post "/bookings/:id/confirm", to: "bookings#confirm", as: "confirm"
  resources :meals, only: [:index, :new, :show, :create] do
    resources :bookings, only: [:new, :create, :destroy]
  end

  resources :users, only: [:show, :index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
