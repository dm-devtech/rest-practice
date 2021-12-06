Rails.application.routes.draw do

  namespace :cool_beans do
    resource :posts
  end

  resources :posts, :only => [:index, :create, :new, :update, :destroy, :edit] do
    # dont require ID
  #   collection do
  #     get :index
  #     get 'new'
  #     post :create
  #   end

  #   #do require id
  #   member do
  #     get :show
  #     put :replace
  #     patch :flag_admin
  #   end
  end
  # get '/posts', to: 'posts#index', as: 'posts'
  # get '/posts/new', to: 'posts#new', as: 'new_posts'
  # get '/posts', to: 'posts#create', as: 'posts_create'
  # get '/posts/:id/edit', to: 'posts#edit', as: 'edit_posts'
  # patch '/posts/:id', to: 'posts#update', as: 'update_posts'
  # delete '/posts/:id', to: 'posts#destroy', as: 'delete_posts'
end

