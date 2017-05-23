Rails.application.routes.draw do

  get 'goldengate' => 'franciscos#goldengate'
  get 'coit' => 'franciscos#coit'
  resources :franciscos

  root 'statics#home'
  
end
