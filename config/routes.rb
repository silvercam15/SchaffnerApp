Rails.application.routes.draw do
 
  get 'notifications/index'

  get 'notifications/create'

  get 'comments/comments'

  #get 'welcome/index'
  #match ':controller(/:action(/:id))', :via => :get


  #root 'welcome#login'
  devise_for :users


  resources :messages, except: :create do
  	post 'create_user' => 'admins_controller#create', as: :create_user  
  	resources :comments
  end
  resources :upload_files
  root 'messages#index'
end