Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/students" => "students#create"

  post "/sessions" => "sessions#create"

  get "/experience" => "experience#index"
  get "/experience/:id" => "experience#show"
  post "/experience" => "experience#create"
  patch "/experience/:id" => "experience#update"
  delete "/experience:id" => "experience#destroy"

  get "/capstones" => "capstones#index"
  get "/capstones/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"
end
