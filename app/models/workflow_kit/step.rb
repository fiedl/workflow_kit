module WorkflowKit
  class Step < ActiveRecord::Base

    attr_accessible :sequence_index

    #belongs_to :workflow
    #belongs_to :brick, class_name: "WorkflowBrick", foreign_key: :workflow_brick_id
    #has_many :parameters, class_name: "WorkflowSequenceParameter", dependent: :destroy

    def execute
      #self.brick.execute( parameter_hash )
    end

    def parameter_hash
    #  params = {}
    #  for parameter in self.parameters
    #    key = parameter.key.to_sym
    #    value = parameter.value
    #    value = value.to_i if ( not value.to_i == nil ) and ( value.to_i.to_s == value )
    #    new_hash = { key => value }
    #    params = params.merge( new_hash )
    #  end
    #  return params
    end

  end
end
