Rails.application.routes.draw do
  get '/posts' => 'posts#index'
  get '/posts/new'

  get 'webhook/reminder'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  post '/callback' => 'linebot#callback'
end
