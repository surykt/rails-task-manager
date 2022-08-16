Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'tasks#index'
  get 'task/:id', to: 'tasks#show', as: :task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'task/:id', to: 'tasks#update'
  patch 'task/:id', to: 'tasks#checked', as: :completed
  delete 'task/:id', to: 'tasks#destroy'
end
