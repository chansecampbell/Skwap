Rails.application.routes.draw do
  root 'statics#home'
  get '/about', to: "statics#about"
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
     resources :users, except: [:new, :create]
     resources :skills do
         resources :connections
     end
end
