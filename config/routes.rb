Rails.application.routes.draw do

  get 'transamerica' => 'franciscos#transamerica'
  get 'coit' => 'franciscos#coit'
  get 'ferrybuilding' => 'franciscos#ferrybuilding'
  get 'fivefivefive' => 'franciscos#fivefivefive'
  get 'goldengate' => 'franciscos#goldengate'
  get 'att' => 'franciscos#att'
  get 'baybridge' => 'franciscos#baybridge'
  get 'sutro' => 'franciscos#sutro'
  resources :franciscos

  root 'statics#home'
  
end
