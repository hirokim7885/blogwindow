Rails.application.routes.draw do
  devise_for :users  , controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }

  namespace :users do
    resources :user_admin
    resources :profile, only: [:show]
    resources :user_profile, only: [:show, :edit, :update, :delete]
  end

  namespace :blogs do
    resources :window, only: [:index]
    resources :top, only: [:show]
    resources :content, only: [:index, :show]
    resources :user_blog
    resources :user_admin_blog, only: [:index]
  end

  resources :users, only: [:show, :edit, :update, :delete]
  resources :reviews, only: [:index, :new, :create]

  root to: "blogs/user_blog#index"

end
