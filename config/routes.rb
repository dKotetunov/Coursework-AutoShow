AutoShow::Application.routes.draw do
  resources :statuses

  resources :cars

  resources :contact_informations

  resources :clients

  resources :people

  root 'welcome#index'
end
