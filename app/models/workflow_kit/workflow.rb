
module WorkflowKit
  class Workflow < ActiveRecord::Base
    attr_accessible :description, :name

    has_many :steps, dependent: :destroy, order: :sequence_index
    has_many :parameters, as: :parameterable, dependent: :destroy

    def execute( params = {} )
      params = {} unless params
      params = params.merge( Parameter.to_hash( self.parameters ) ) if self.parameters.count > 0
      self.steps.collect do |step|
        step.execute( params )
      end
    end

  end
end
