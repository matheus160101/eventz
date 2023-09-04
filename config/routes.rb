Rails.application.routes.draw do
  resources :categories
  resources :likes

  root "events#index"

  resources :events do
    resources :registrations
    resources :likes
  end

  resource :session, only: [:new, :create, :destroy]

  resources :users
  get "singup" => "users#new"

end
