Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/autologin", to: "auth#autologin"
  
  namespace :api do
    namespace :v1 do
      resources :venues, only: [:show, :index]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :tickets, only: [:show, :index]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index]
    end
  end

end

