Rails.application.routes.draw do
  resources :comments
  resources :profile
  devise_for :users
  resources :posts do 
    resources :likes 
    resources :comments
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
