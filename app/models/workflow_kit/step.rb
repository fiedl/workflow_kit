module WorkflowKit

  require 'workflow_kit/brick'
  
  class Step < ActiveRecord::Base

    attr_accessible :sequence_index, :brick_name, :parameters

    belongs_to :workflow

    extend WorkflowKit::Parameterable
    has_many_parameters


    def execute( params = {} )
      params = {} unless params
      params = params.merge( self.parameters_to_hash ) if self.parameters.count > 0
      self.brick.execute( params ) if self.brick
    end

    def brick
      unless @brick
        class_name = "WorkflowKit::#{self.brick_name}" if self.brick_name
        @brick = class_name.constantize.new if class_name
      end
      return @brick
    end

  end
end
