Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    root to: 'lists#index'
    resources :lists, only: %i[index show new create edit update destroy] do
      resources :bookmarks, only: %i[new create index]
    end
    resources :bookmarks, only: [:destroy]
  end
end

