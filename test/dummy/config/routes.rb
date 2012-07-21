Rails.application.routes.draw do

  mount WorkflowKit::Engine => "/workflow_kit"
end
