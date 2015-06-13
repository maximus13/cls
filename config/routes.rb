Rails.application.routes.draw do
  resources :listings

  get 'pages/click'

  get 'pages/contact'

 root 'listings#index'

end
