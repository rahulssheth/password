Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#feed'
  get '/user/:id', to: 'application#user'
  post '/comments/create', to: 'comment#create'
  get '/comment/feed', to: 'comment#feed'
end
