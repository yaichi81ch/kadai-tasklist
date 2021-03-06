Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'tasks/:id', to: 'tasks#show'
  # post 'tasks', to: 'tasks#create'
  # put 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
  
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#index'
  # put 'tasks/:id/edit' to: 'tasks#edit'
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :create]
  resources :tasks, only: [:create, :destroy, :edit, :update, :show]
end
