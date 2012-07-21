# -*- coding: utf-8 -*-
require 'spec_helper'

describe WorkflowKit::Brick do

  before { @boil_water_brick = WorkflowKit::BoilWaterBrick.new } # in spec/support/factory.rb

  describe "#execute" do

    it "should work to execute a brick" do
      @boil_water_brick.execute( :aim_temperature => "100 °C" ).should ==
        "Fill a large pot with water, put it on a cooker and wait until a temperature of 100 °C is reached."
    end

  end

end


