Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  # get "tasks", to: "tasks#index"
  # get "tasks/new", to: "tasks#new", as: :new_task
  # get "tasks/:id", to: "tasks#show", as: :task_show
  # post "tasks", to: "tasks#create", as: :create_task
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update", as: :update_task
  # delete "tasks/:id", to: "tasks#destroy", as: :destroy_task
  resources :tasks
end
