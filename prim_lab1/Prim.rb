Rails.application.routes.draw do
  # Іменовані маршрути
  get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/admin' => 'admin#admin_panel', as: :admin_panel
  get '/profile/:id' => 'admin#profile', as: :profile

  # RESTful ресурси
  resources :properties

  # Інші маршрути
  get '/apartments' => 'properties#apartments', as: :apartments
  get '/houses' => 'properties#houses', as: :houses
  get '/sell' => 'public#sell', as: :sell
  get '/rent' => 'public#rent', as: :rent
  get 'sell/apartments' => 'properties#apartments_sell', as: :apartments_sell
  # ...

  # Головний маршрут
  root to: 'public#main'
end
