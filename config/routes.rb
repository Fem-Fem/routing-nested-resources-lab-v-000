Rails.application.routes.draw do
  resources :artists, only: [:show, :index] do
    resources :songs
  end
  resources :songs, only: [:show, :index] do
    resources :artists
  end
end
