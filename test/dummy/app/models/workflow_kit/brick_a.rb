module WorkflowKit
  class BrickA < WorkflowKit::Brick
    def description
      "This is the test workflow brick A."
    end
    def execute( params = {} )
      Message.create( text: "Brick A has been executed." )
      return params
    end
  end
end

