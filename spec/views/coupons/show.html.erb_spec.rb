require 'spec_helper'

describe "coupons/show" do
  before(:each) do
    @coupon = assign(:coupon, stub_model(Coupon,
      :name => "Name",
      :location => "Location",
      :address => "Address",
      :item => "Item",
      :when => "When"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
    rendered.should match(/Address/)
    rendered.should match(/Item/)
    rendered.should match(/When/)
  end
end
