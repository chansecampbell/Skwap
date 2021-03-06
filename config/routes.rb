Rails.application.routes.draw do
  root 'statics#home'
  get '/about', to: "statics#about"
  
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
     resources :users, except: [:new, :create]
     resources :skills do
         resources :connections
         get "/show", to: "connections#show"
     end
     
       resources :connections, only: [] do 
         member do
           get "accept"
           get "reject"
           get "cancel"
           get "complete"
       end
     end
     

     resources :comments, only: [:create, :destroy]
end
