Rails.application.routes.draw do
  devise_for :users  , controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/sign_out', to: 'users/sessions#destroy'
  end

  namespace :users do
    resources :admin
    resources :profile, only: [:show]
    resources :my_profile, only: [:show, :edit, :update, :delete]
  end

  namespace :blogs do
    resources :window, only: [:index]
    resources :top, only: [:show]
    resources :content, only: [:index, :show]
    resources :my_content
    resources :admin_content, only: [:index]
  end

  resources :users, only: [:show, :edit, :update, :delete]
  resources :reviews, only: [:index, :new, :create]

  root to: "blogs/my_content#index"

end
