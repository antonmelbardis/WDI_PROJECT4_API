Rails.application.routes.draw do
  resources :attendances
  scope :api do
    resources :users
    resources :teaching_modules
    resources :seminars do
      resources :users
    end
    resources :posts
    resources :comments
    resources :countries
    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
    # get "/countries", to: ""


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
