Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[show index create new] do
    resources :reviews, only: %i[new create]
  end
end
