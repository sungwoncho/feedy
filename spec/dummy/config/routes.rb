Rails.application.routes.draw do
  get '/home' => 'static_pages#home'

  mount Feedy::Engine => "/feedy"
end
