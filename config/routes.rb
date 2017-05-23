Rails.application.routes.draw do
  
  get 'coit' => 'coits#index'
  resources :coits

  get 'goldengate' => 'franciscos#goldengate'
  resources :franciscos

  root 'statics#home'
  
end
