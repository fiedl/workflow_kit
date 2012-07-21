module WorkflowKit
  class Workflow < ActiveRecord::Base
    attr_accessible :description, :name

    #has_many :sequence_entries, class_name: "WorkflowSequenceEntry", dependent: :destroy
    #has_many :bricks, class_name: "WorkflowBrick", through: :sequence_entries

    def execute
#      self.sequence_entries.collect do |sequence_entry|
#        sequence_entry.execute
#      end
    end

  end
end
