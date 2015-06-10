Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'landing_page#index'

  get 'profile' => 'events#profile'
  get 'users' => 'users#index'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :events
  resources :users
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
end
