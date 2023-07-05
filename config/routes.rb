Rails.application.routes.draw do
  #root 'home#index'
  get 'home/index'
  # namespace :api do
  #   namespace :v1 do
  #     resources :articles, only: [:index,:show,:create,:update,:destroy]
  #   end
  # end
  
  get 'getAll'=>'api/v1/articles#index'
  get 'getArtById/:id'=>'api/v1/articles#show'
  post 'create'=>'api/v1/articles#create'
  put 'update/:id'=>'api/v1/articles#update'
  delete 'del/:id'=>'api/v1/articles#destroy'

  # namespace :api do
  #   namespace :v1 do
  #     match 'articles', to: 'articles#index', via: :get
  #     match 'articles/:id', to: 'articles#show', via: :get
  #     match 'articles', to: 'articles#create', via: :post
  #     match 'articles/:id', to: 'articles#update', via: :put
  #     match 'articles/:id', to: 'articles#destroy', via: :delete
  #   end
  # end
  
end
