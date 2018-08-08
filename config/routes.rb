Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'lessons#index'
  resources :lessons
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
