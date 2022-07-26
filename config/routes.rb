Rails.application.routes.draw do
  devise_for :users
  # devise_for :models
  # get "articles#index"
  get 'home/about'
  get 'home/contact'
  get 'home/journey'
  # get 'views/articles'
  
  root 'home#index'
  resources :articles do
    resources :comments
  end
end


# create  app/controllers/home_controller.rb
# route  get 'home/index'
# invoke  erb
# create    app/views/home
# create    app/views/home/index.html.erb
# invoke  test_unit
# create    test/controllers/home_controller_test.rb
# invoke  helper
# create    app/helpers/home_helper.rb
# invoke    test_unit
