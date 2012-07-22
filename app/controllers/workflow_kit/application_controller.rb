module WorkflowKit

  class ApplicationController < ::ApplicationController

    #
    # What is this controller inheritance doing?
    # This makes the class WorkflowKit::ApplicationController inherit from the main
    # application's ApplicationController. 
    # Therefore, all helper methods of the main app will be available in the engine.
    # That is necessary if you want to use the main app's layout, because this
    # layout will most likely use some helper methods.
    # 
    # To restore the isolation from the main app's ApplicationController, 
    # one could use the inheritance originally used by the `rails g plugin --mountable`,
    # which is:
    # 
    #    class ApplicationController < ActionController::Base
    # 
    # For further information, I recommend having a look at this extremely 
    # helpful article:
    # 
    #    http://bibwild.wordpress.com/2012/05/10/the-semi-isolated-rails-engine/
    #

  end
end
