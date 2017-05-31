Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    post '/login', to:"sessions#create"
    delete '/logout', to:"sessions#destroy"

    resources :players
    resources :games
    resources :sports
end
