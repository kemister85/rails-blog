Rails.application.routes.draw do
  devise_for :users
  # devise_for :models
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
