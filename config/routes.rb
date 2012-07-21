WorkflowKit::Engine.routes.draw do

  root to: "workflows#index"

  resources :workflows do
    put 'execute', on: :member
  end
  
end
