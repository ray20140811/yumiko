Rails.application.routes.draw do
  resources :vocabularies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "vocabularies#index"
end
