Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
   } do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end  

  root to: 'posts#index'

  resources :posts, only: [:create, :show, :edit, :update, :destroy] do
    get :search, on: :collection
    resources :comments, only: [:create, :edit, :update, :destroy]
    resources :likes, only: [:index, :create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :destroy] do
    resources :profiles, only: [:new, :create, :edit, :update]
  end

  resources :relationships, only: [:create, :destroy] do
    get "follow_list", on: :member
    get "follower_list", on: :member
  end
end
