Rails.application.routes.draw do
  resources :games
  resources :cheats
  resources :users
  delete 'cheat' => 'cheats#destroy'
  delete 'game' => 'games#destroy'
end
