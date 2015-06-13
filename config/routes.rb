Rails.application.routes.draw do
  resources :listings

  root 'pages#click'

  get 'pages/contact'

  get 'listings/index'

end
