Feedy::Engine.routes.draw do
  resources :feedbacks, only: [:index, :show, :create, :destroy]
end
