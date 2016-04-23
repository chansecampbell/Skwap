Rails.application.routes.draw do
  root 'statics#home'
  get '/about', to: "statics#about"
  
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
     resources :users, except: [:new, :create]
     resources :skills do
         resources :connections
         get "/show", to: "connections#show"
     end
     get "/inbox", to: "connections#inbox"
     get "/outbox", to: "connections#outbox"


       resources :connections, only: [] do 
         member do
           get "accept"
           get "reject"
           get "cancel"
       end
     end
end
