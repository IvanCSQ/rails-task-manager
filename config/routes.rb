Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get 'tasks', to: 'tasks#index' # GET /tasks
  # get 'tasks/new', to: 'tasks#new' # GET /tasks/new
  # get 'tasks/:id', to: 'tasks#show', as: 'task' # GET /tasks/1
  # post 'tasks', to: 'tasks#create' # POST /tasks
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit' # GET /tasks/id/edit
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy', as: 'task_delete'

  resources :tasks
end
