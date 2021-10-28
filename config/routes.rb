Rails.application.routes.draw do

  get '/posts', to: 'posts#index'
  get '/new-posts', to: 'posts#new', as: 'new_posts'
  get '/make-posts', to: 'posts#create'
  get '/edit-posts/:id', to: 'posts#edit', as: 'edit_posts'
  get '/update-posts/:id', to: 'posts#update', as: 'update_posts'
  get '/delete-posts/:id', to: 'posts#destroy', as: 'delete_posts'
end

