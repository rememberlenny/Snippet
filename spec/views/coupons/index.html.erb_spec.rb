require 'spec_helper'

describe "coupons/index" do
  before(:each) do
    assign(:coupons, [
      stub_model(Coupon,
        :name => "Name",
        :location => "Location",
        :address => "Address",
        :item => "Item",
        :when => "When"
      ),
      stub_model(Coupon,
        :name => "Name",
        :location => "Location",
        :address => "Address",
        :item => "Item",
        :when => "When"
      )
    ])
  end

  it "renders a list of coupons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "When".to_s, :count => 2
  end
end
