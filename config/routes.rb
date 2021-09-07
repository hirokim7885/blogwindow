Rails.application.routes.draw do
  devise_for :users  , controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/sign_out', to: 'users/sessions#destroy'
  end

  namespace :users do
    resources :admin
    resources :profile, only: [:show]
    resources :my_profile, only: [:show, :edit, :update, :destroy]
    resources :top, only: [:show]
    resources :display, only: [:show]
    resources :logininfo, only: [:edit, :update, :destroy]
    resources :admin_logininfo, only: [:edit, :update, :destroy]
    resources :admin_top, only: [:show]
  end

  namespace :blogs do
    resources :window, only: [:index]
    resources :content, only: [:show] do
      resources :review, only: [:index, :new, :create]
    end
    resources :my_content
    resources :admin_window, only: [:index]
    resources :admin_content, only: [:index]
    resources :admin_article, only: [:show, :destroy] do
      resources :support, only: [:index, :destroy]
    end
  end

  resources :users, only: [:show, :edit, :update, :destroy]

  root to: "blogs/admin_content#index"

end
