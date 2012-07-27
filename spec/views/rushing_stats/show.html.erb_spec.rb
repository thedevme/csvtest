require 'spec_helper'

describe "rushing_stats/show" do
  before(:each) do
    @rushing_stat = assign(:rushing_stat, stub_model(RushingStat,
      :name => "Name",
      :rushing_att => 1,
      :rushing_yards => 2,
      :rushing_att_avg => 1.5,
      :rushing_long => 3,
      :rushing_td => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
