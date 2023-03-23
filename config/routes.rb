Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :new_task
  get "tasks/:id", to: "tasks#show", as: :task_show
  post "tasks", to: "tasks#create", as: :create_task
end
