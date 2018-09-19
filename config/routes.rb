Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  resources :lessons
  resources :users, only: [:show] do
    resource :downloads, only: :show
  end
  resources :users
  mount Ckeditor::Engine => '/ckeditor'
  root 'lessons#index'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
