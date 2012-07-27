require 'spec_helper'

describe "rushing_stats/index" do
  before(:each) do
    assign(:rushing_stats, [
      stub_model(RushingStat,
        :name => "Name",
        :rushing_att => 1,
        :rushing_yards => 2,
        :rushing_att_avg => 1.5,
        :rushing_long => 3,
        :rushing_td => 4
      ),
      stub_model(RushingStat,
        :name => "Name",
        :rushing_att => 1,
        :rushing_yards => 2,
        :rushing_att_avg => 1.5,
        :rushing_long => 3,
        :rushing_td => 4
      )
    ])
  end

  it "renders a list of rushing_stats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
