Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # # See ALL tasks
  get 'tasks', to: 'tasks#index'

  # # Get task info with form
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # # Create a task
  post 'tasks', to: 'tasks#create'

  # # See ONE task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # # Get task info to update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # # Update a task
  patch 'tasks/:id', to: 'tasks#update'

  # # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

  # Defines the root path route ("/")
  # root "posts#index"
end
