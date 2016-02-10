Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" } 
  root to: "home#home"
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  resources :cities
  resources :categories
  resources :charities do
  resources :posts
end

 resources :posts

end
