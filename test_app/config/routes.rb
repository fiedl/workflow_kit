TestApp::Application.routes.draw do

  mount WorkflowKit::Engine => "/workflow_kit" #, as: "workflow_kit"

  root to: "workflow_kit/workflows#index"

end
