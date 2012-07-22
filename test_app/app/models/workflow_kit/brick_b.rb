module WorkflowKit
  class BrickB < WorkflowKit::Brick
    def description
      "This is the test workflow brick B."
    end
    def execute( params = {} )
      Message.create( text: "Brick B has been executed." )
      return params
    end
  end
end

