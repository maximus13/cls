Rails.application.routes.draw do
  resources :listings

  root 'pages#click'
  post 'pages/do_click'

  get 'pages/contact'

  get 'listings/index'

end
