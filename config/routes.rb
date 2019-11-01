Rails.application.routes.draw do
  get '/home' => 'main#home'
  get '/list' => 'main#list'
  root to:'main#home'
end
