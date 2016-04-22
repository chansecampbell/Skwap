Rails.application.routes.draw do

  root 'statics#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }


end
