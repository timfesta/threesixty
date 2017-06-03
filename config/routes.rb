Rails.application.routes.draw do

  get 'transamerica' => 'franciscos#transamerica'
  get 'coit' => 'franciscos#coit'
  get 'ferrybuilding' => 'franciscos#ferrybuilding'
  get 'fivefivefive' => 'franciscos#fivefivefive'
  resources :franciscos

  root 'statics#home'
  
end
