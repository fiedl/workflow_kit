module WorkflowKit
  class BrickC < WorkflowKit::Brick
    def description
      "This is the test workflow brick C."
    end
    def execute( params = {} )
      Message.create( text: "Brick C has been executed." )
      return params
    end
  end
end

