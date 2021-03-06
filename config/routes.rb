Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    mount Blazer::Engine, at: "blazer"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "blazer", to: redirect('/')
end
