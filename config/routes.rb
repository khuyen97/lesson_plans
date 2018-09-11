Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  resources :lessons
  resources :users
  mount Ckeditor::Engine => '/ckeditor'
  root 'lessons#index'
  resources :lessons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
