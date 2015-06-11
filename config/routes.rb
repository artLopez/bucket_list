Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'landing_page#index'

  get 'profile' => 'users#show'
  get 'users' => 'users#index'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :events
  resources :users
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


  unless Rails.env.test?
    get '404', :to => 'application#page_not_found'
    get '422', :to => 'application#server_error'
    get '500', :to => 'application#server_error'
  end

end
