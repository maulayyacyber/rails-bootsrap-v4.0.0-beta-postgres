Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#index'

  get '/about', to: 'about#index'

  resources :blogs

end

#form action berrti mas ?