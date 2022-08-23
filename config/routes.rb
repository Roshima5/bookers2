Rails.application.routes.draw do
  
  root to: "homes#top"
  resources :book, only: [:new, :index, :show, :edit]
  resources :user, only: [:index, :show, :edit]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
