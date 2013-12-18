AutoShow::Application.routes.draw do
  resources :employees

  resources :positions

  resources :payment_methods

  resources :buyers

  resources :suppliers

  resources :modifications

  resources :statuses

  resources :cars

  resources :contact_informations

  resources :clients

  resources :people

  root 'welcome#index'
end
