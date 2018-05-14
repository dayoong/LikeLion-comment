Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  
  post '/replies/create' => 'replies#create'
end
