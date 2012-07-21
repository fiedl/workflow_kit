module WorkflowKit

  require 'workflow_kit/brick'
  
  class Step < ActiveRecord::Base

    attr_accessible :sequence_index, :brick_name

    belongs_to :workflow
    has_many :parameters, dependent: :destroy, as: :parameterable

    def execute( params = {} )
      params = {} unless params
      params = params.merge( Parameter.to_hash( self.parameters ) ) if self.parameters.count > 0
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
