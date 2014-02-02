Howto::Application.routes.draw do
  resources :tasks do
    resources :lists
  end

  root to: "tasks#index"
end
