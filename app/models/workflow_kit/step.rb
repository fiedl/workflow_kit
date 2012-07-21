module WorkflowKit
  class Step < ActiveRecord::Base

    attr_accessible :sequence_index, :brick_name

    belongs_to :workflow
    has_many :parameters, dependent: :destroy, as: :workflow_kit_parameterable, polymorphic: true

    def execute( params )
      params = params.merge( Parameter.to_hash( self.parameters ) )
      self.brick.execute( params ) if self.brick
    end

    def brick
      unless @brick
        class_name = self.brick_name
        @brick = class_name.constantize.new if class_name
      end
      return @brick
    end

  end
end
