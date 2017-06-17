Rails.application.routes.draw do

  get 'signup' => 'users#new'
  get 'profile' => 'users#show'
  resources :users

  get 'login'   => 'sessions#new'
  get 'logout'  => 'sessions#destroy'
  resources :sessions


  get 'transamerica' => 'franciscos#transamerica'
  get 'coit' => 'franciscos#coit'
  get 'ferrybuilding' => 'franciscos#ferrybuilding'
  get 'fivefivefive' => 'franciscos#fivefivefive'
  get 'goldengate' => 'franciscos#goldengate'
  get 'att' => 'franciscos#att'
  get 'baybridge' => 'franciscos#baybridge'
  get 'sutro' => 'franciscos#sutro'
  get 'sf' => 'franciscos#sf'
  resources :franciscos


  root 'statics#home'
  
end
