module WorkflowKit
  class Parameter < ActiveRecord::Base

    attr_accessible :key, :value

    belongs_to :workflow_kit_parameterable, polymorphic: true

  end
end
