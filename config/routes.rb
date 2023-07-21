Rails.application.routes.draw do
  resources :users
  resources :playlist_old
  resources :user_playlist
  resources :user_info
  resources :songs
  root 'home#index' # Додайте кореневий шлях, якщо ще не додали


  get '/playlists', to: 'playlists#index' # Шлях для сторінки "Плейлисти"
  get '/songs', to: 'songs#index' # Шлях для сторінки "Каталог""
  get '/login', to: 'users#login' # Маршрут для відображення сторінки входу
  post '/login', to: 'users#process_login' # Маршрут для обробки форми входу
end
