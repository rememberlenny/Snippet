require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :firstname => "Name",
        :phoneNumber => "Phone Number",
        :subscribeGroup => "Subscribe Group"
      ),
      stub_model(User,
        :firstname => "Name",
        :phoneNumber => "Phone Number",
        :subscribeGroup => "Subscribe Group"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Subscribe Group".to_s, :count => 2
  end
end
