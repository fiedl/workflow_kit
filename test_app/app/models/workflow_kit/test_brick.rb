module WorkflowKit
  class TestBrick < WorkflowKit::Brick
    def description
      "This is a test workflow brick. Execution will simply create a new Message and  return the parameters."
    end
    def execute( params = {} )
      Message.create( text: "The TestBrick has been executed." )
      return params
    end
  end
end

