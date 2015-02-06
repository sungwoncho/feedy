Feedy::Engine.routes.draw do
  resources :feedback, only: [:index, :show, :create, :destroy]
end
