Rails.application.routes.draw do
  resources :posts do
    get 'preview', on: :new
    resources :comments, only: [:create, :destroy], shallow: true
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
