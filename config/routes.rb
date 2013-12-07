BookFinder::Application.routes.draw do
  root to: "pages#index"
  
  resources :books, only: [:index, :show]
end
