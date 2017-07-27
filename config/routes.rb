Links::Application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    # resources :links, only: [:show, :index, :create, :destroy, :update]
    # resources :comments, only: [:show, :index, :create, :destroy, :update]
  end

  root 'static_pages#root'
end
