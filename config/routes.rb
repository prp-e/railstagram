Rails.application.routes.draw do
  resources :directory
  resources :timeline
  resources :comments
  resources :users_directory
  resources :profile do 
    resources :follows 
  end 
  devise_for :users
  resources :users do 
    member do 
      get :confirm_email
    end 
  end 
  resources :posts do 
    resources :likes 
    resources :comments
  end 

  root  "timeline#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
