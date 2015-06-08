Rails.application.routes.draw do
  get 'sessions/new'

  resources :events
  resources :users

  get 'landing_page/index'
  # You can have the root of your site routed with "root"
  root 'landing_page#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


end
