Rails.application.routes.draw do
  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'following/index', as: :following
  get 'followers/index', as: :followers
  get 'mentions/index', as: :mentions
  get 'recent_searchs/index', as: :recent_searchs
end
