Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, controllers: { registrations: "registrations" } 
  root to: "home#home"
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  get "/mycharities", to: "charities#manage"

  resources :cities
  resources :categories
  resources :charities do 
    resources :posts
  end

  resources :posts

end
