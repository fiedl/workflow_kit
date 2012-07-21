module WorkflowKit
  class Brick 

    @@descendants = []

    def self.inherited( descendant_class )
      @@descendants << descendant_class 
    end

    def name
      self.class_name
    end

    def description
    end

    def execute( params )
    end

    def self.all
      @@descendants
    end

  end

  class TestBrick < Brick
    def description
      "This is a test brick of the workflow_kit."
    end

    def execute( params )
      p "Executing TestBrick"
      p params
    end
  end

end