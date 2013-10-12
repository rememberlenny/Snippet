require 'spec_helper'

describe "recreations/show" do
  before(:each) do
    @recreation = assign(:recreation, stub_model(Recreation,
      :name => "Name",
      :location => "Location",
      :address => "Address",
      :audience => "Audience",
      :info => "Info",
      :days => "Days",
      :timeOfDay => "Time Of Day"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/Address/)
    rendered.should match(/Audience/)
    rendered.should match(/Info/)
    rendered.should match(/Days/)
    rendered.should match(/Time Of Day/)
  end
end
