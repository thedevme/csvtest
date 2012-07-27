require 'spec_helper'

describe "RushingStats" do
  describe "GET /rushing_stats" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get rushing_stats_path
      response.status.should be(200)
    end
  end
end
