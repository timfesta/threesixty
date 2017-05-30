Rails.application.routes.draw do

  get 'goldengate' => 'franciscos#goldengate'
  get 'coit' => 'franciscos#coit'
  get 'ferrybuilding' => 'franciscos#ferrybuilding'
  get 'sutro' => 'franciscos#sutro'
  resources :franciscos

  root 'statics#home'
  
end
