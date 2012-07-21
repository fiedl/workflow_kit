
module WorkflowKit
  class Workflow < ActiveRecord::Base

    attr_accessible :description, :name, :parameters

    has_many :steps, dependent: :destroy, order: :sequence_index

    extend WorkflowKit::Parameterable
    has_many_parameters

    def execute( params = {} )
      params = {} unless params
      params = params.merge( self.parameters_to_hash ) if self.parameters.count > 0
      self.steps.collect do |step|
        step.execute( params )
      end
    end

  end
end
