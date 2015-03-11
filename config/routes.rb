Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/dashboard', to: 'dashboard#show'
  root 'welcome#index'
  resources :stations
  resources :welcome, only: [:index, :create]
end

# resources :users, path: "", param: :slug
#
# namespace :users, as: :user, path: "/:slug" do
#   resources :trips
#   get '/dashboard', to: 'dashboard#show'
# end
