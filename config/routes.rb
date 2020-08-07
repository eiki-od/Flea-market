Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  root to: "posts#index"
  resources :posts, only: [:index,:new, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :new]
  resources :cards, only: [:new, :show] do
    collection do
      get 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
end
