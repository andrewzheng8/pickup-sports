Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    post '/login', to:"sessions#create"
    delete '/logout', to:"sessions#destroy"
    post '/current_loc', to: 'sessions#current_loc', as: :loc_input
    delete '/change_loc', to: 'sessions#change_loc', as: :loc_change



    resources :players
    resources :games
    resources :sports
    resources :locations
    resources :player_games
    resources :user_friends

end
