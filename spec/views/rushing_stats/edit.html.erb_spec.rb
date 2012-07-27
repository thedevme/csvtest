require 'spec_helper'

describe "rushing_stats/edit" do
  before(:each) do
    @rushing_stat = assign(:rushing_stat, stub_model(RushingStat,
      :name => "MyString",
      :rushing_att => 1,
      :rushing_yards => 1,
      :rushing_att_avg => 1.5,
      :rushing_long => 1,
      :rushing_td => 1
    ))
  end

  it "renders the edit rushing_stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rushing_stats_path(@rushing_stat), :method => "post" do
      assert_select "input#rushing_stat_name", :name => "rushing_stat[name]"
      assert_select "input#rushing_stat_rushing_att", :name => "rushing_stat[rushing_att]"
      assert_select "input#rushing_stat_rushing_yards", :name => "rushing_stat[rushing_yards]"
      assert_select "input#rushing_stat_rushing_att_avg", :name => "rushing_stat[rushing_att_avg]"
      assert_select "input#rushing_stat_rushing_long", :name => "rushing_stat[rushing_long]"
      assert_select "input#rushing_stat_rushing_td", :name => "rushing_stat[rushing_td]"
    end
  end
end
