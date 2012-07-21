# -*- coding: utf-8 -*-
require 'spec_helper'

module WorkflowKit

  describe Step do

    before do
      @workflow = create_workflow # in spec/support/factory.rb
      @step = @workflow.steps.first
    end

    describe "#execute" do
      it "should work to execute a step" do
        @step.execute.should ==
          "Fill a large pot with water, put it on a cooker and wait until a temperature of 100 °C is reached."
      end
    end

  end

end
