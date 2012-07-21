module WorkflowKit
  class Engine < ::Rails::Engine
    isolate_namespace WorkflowKit
    engine_name 'workflow_kit'
  end
end
