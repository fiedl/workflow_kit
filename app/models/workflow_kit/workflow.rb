module WorkflowKit
  class Workflow < ActiveRecord::Base
    attr_accessible :description, :name

    has_many :steps, dependent: :destroy, order: :sequence_index
    has_many :parameters, as: :workflow_kit_parameterable, polymorphic: true, dependent: :destroy

    def execute
      parameter_hash = Parameter.to_hash( self.parameters )
      self.steps.collect do |step|
        step.execute( parameter_hash )
      end
    end

  end
end
