AutoShow::Application.routes.draw do
  resources :clients

  resources :people

  root 'welcome#index'
end
