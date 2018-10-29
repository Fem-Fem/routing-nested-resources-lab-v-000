Rails.application.routes.draw do
  resources :artists, only: [:show, :index] do
    resources :songs
  end
  resources :songs do
    resources :artists
  end
end
