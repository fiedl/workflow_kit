WorkflowKit::Engine.routes.draw do

  root to: "workflows#index"

  resources :workflows
  
end
