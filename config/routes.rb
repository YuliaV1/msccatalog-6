Rails.application.routes.draw do
  resources :users
  resources :playlist_old
  resources :user_playlist
  resources :user_info
  resources :songs
end
