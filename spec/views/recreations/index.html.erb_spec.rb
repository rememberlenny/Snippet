require 'spec_helper'

describe "recreations/index" do
  before(:each) do
    assign(:recreations, [
      stub_model(Recreation,
        :name => "Name",
        :location => "Location",
        :address => "Address",
        :audience => "Audience",
        :info => "Info",
        :days => "Days",
        :timeOfDay => "Time Of Day"
      ),
      stub_model(Recreation,
        :name => "Name",
        :location => "Location",
        :address => "Address",
        :audience => "Audience",
        :info => "Info",
        :days => "Days",
        :timeOfDay => "Time Of Day"
      )
    ])
  end

  it "renders a list of recreations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Audience".to_s, :count => 2
    assert_select "tr>td", :text => "Info".to_s, :count => 2
    assert_select "tr>td", :text => "Days".to_s, :count => 2
    assert_select "tr>td", :text => "Time Of Day".to_s, :count => 2
  end
end
