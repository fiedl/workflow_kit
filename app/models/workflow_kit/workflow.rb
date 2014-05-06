module WorkflowKit
  class Workflow < ActiveRecord::Base

    has_many :steps, dependent: :destroy

    extend WorkflowKit::Parameterable
    has_many_parameters

    def execute( params = {} )
      params = {} unless params
      params = params.merge( self.parameters_to_hash ) if self.parameters.count > 0
      self.steps.collect do |step|
        step.execute( params )
      end
    end

    def steps 
      super.order( :sequence_index ).order( :created_at )
    end

  end
end
