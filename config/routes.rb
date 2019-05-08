Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :organized_games, :users, :confirmations
      # get 'users/:id/hosted-games', to: 'users#get_user_created_games'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
