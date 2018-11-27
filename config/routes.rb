Rails.application.routes.draw do
  # kind of route
  # controller#method name
  root 'subs#index'

  # get 'subs/new'
  # get '/turkey', to: 'subs#new'

  # post '/subs', to: 'subs#create'
  # # :id placeholder for the id number
  # put '/subs/:id', to: 'subs#update'
  # delete '/subs/:id', to: 'subs#delete'

  # embedded routes, nested routes
  resources :subs do 
    resources :topics
  end


end
