# -*- coding: utf-8 -*-
require 'spec_helper'

describe WorkflowKit::Workflow do

  before { @workflow = WorkflowKit::Factory.create_workflow } # in spec/support/factory.rb

  describe "#execute" do
    it "should work" do
    end

    it "should produce the proper recipe" do
      @workflow.execute.join( " " ).should ==
        "Fill a large pot with water, put it on a cooker and wait until a temperature of 100 °C is reached. " +
        "Add spaghetti and boil them for 10 minutes. Sieve spaghetti, put them on a plate, and serve them with " +
        "some yummy ham-cheese-cream sauce."
    end
  end

  describe "#steps" do
    it "should list the sequence entries" do
      @workflow.steps.count.should == 3
    end
  end

end

