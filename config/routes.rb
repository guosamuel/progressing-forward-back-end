Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :projects, :tasks
      post '/auth', to: "auth#create"
      # get '/auth', to: "auth#test"

    end
  end
end
