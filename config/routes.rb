Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogout_main#home'

  get 'blogout_main/signin', to: 'blogout_main#signin'
  get 'blogout_main/signup', to: 'blogout_main#signup'
  get 'blogout_main/home', to:'blogout_main#home'
  get 'blogout_main/create', to: 'blogout_main#create'
  get 'sessions/userPage', to: 'sessions#userPage'
  get 'sessions/post', to: 'sessions#post'
  get 'sessions/myposts', to: 'sessions#myposts'
  get 'blog/create', to:'blog#create'
  get 'blog/show', to:'blog#show'
  get 'blog/delete', to:'blog#delete'
  post 'blogout_main/signup', to:'users#create'
  post 'blogout_main/signin', to:'sessions#validate'
  post 'sessions/post',  to:'blog#create'
  resources :users
  resources :blog
end




















































































