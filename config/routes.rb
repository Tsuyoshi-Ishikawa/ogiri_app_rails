Rails.application.routes.draw do
  # get 'static_pages/index'
  root 'titles#index'
  resources :titles, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
