Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/about' => 'static_pages#about'

  mount Feedy::Engine => "/feedy"
end
