Rails.application.routes.draw do

  get 'goldengate' => 'franciscos#goldengate'
  get 'coit' => 'franciscos#coit'
  get 'ferrybuilding' => 'franciscos#ferrybuilding'
  resources :franciscos

  root 'statics#home'
  
end
