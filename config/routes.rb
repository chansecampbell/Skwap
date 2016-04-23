Rails.application.routes.draw do

  root 'statics#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
     resources :users, except: [:new, :create]
end
