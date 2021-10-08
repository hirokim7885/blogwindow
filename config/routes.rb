Rails.application.routes.draw do
  devise_for :users  , controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/sign_out', to: 'users/sessions#destroy'
  end

  namespace :users do
    resources :admin
    resources :admin_basicinfo, only: [:show, :edit, :update, :destroy]
    resources :profile, only: [:show]
    resources :my_profile, only: [:show, :edit, :update, :destroy]
    resources :admin_my_profile, only: [:show, :edit, :update, :destroy]
    resources :top, only: [:show]
    resources :display, only: [:show]
    resources :logininfo, only: [:edit, :update, :destroy]
    resources :admin_logininfo, only: [:edit, :update, :destroy]
    resources :admin_top, only: [:show]
    resources :blog_designs, only:[:show, :edit, :update]
    resources :admin_blog_designs, only:[:show, :edit, :update]
  end

  namespace :blogs do
    resources :window, only: [:index]
    resources :content, only: [:show] do
      resources :review, only: [:index, :new, :create]
    end
    resources :my_content do
      resources :message, only: [:index]
    end
    resources :admin_window, only: [:index]
    resources :admin_content
    resources :admin_article, only: [:show, :destroy] do
      resources :support, only: [:index, :destroy]
    end
  end

  namespace :reviews do
    resources :admin, only: [:index, :destroy]
  end

  resources :users, only: [:show, :edit, :update, :destroy]

  root to: "blogs/my_content#index"

end
