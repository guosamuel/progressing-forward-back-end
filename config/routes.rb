Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :projects, :tasks, :user_projects
      post '/auth', to: "auth#create"
      # get '/auth', to: "auth#create"

    end
  end
end
