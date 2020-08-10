Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  root to: "posts#index"
  resources :posts
  post 'posts/:id' => 'posts#update'
  get 'posts/:id/edit' => 'posts#edit'
  post "posts/:id/destroy" => "posts#destroy"
  resources :users, only: [:show, :destroy, :new]
  # 12行目にnewを加えていますが、これがログアウト画面を表示させるためのものです。
  # ※７つのアクションのうち、使わなそうなアクションを選んで、ビューまで作るように言われてたので、この実装をしています。
  # それ以外、newにしているこだわりはありません。
  resources :posts, only: [:index,:new, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :new]
  resources :cards, only: [:new, :show] do
    collection do
      get 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
  resources :purchase, only: [:index] do
    collection do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
end
