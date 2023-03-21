Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#details", as: :task_details
end
