require 'spec_helper'

describe "coupons/edit" do
  before(:each) do
    @coupon = assign(:coupon, stub_model(Coupon,
      :name => "MyString",
      :location => "MyString",
      :address => "MyString",
      :item => "MyString",
      :when => "MyString"
    ))
  end

  it "renders the edit coupon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coupon_path(@coupon), "post" do
      assert_select "input#coupon_name[name=?]", "coupon[name]"
      assert_select "input#coupon_location[name=?]", "coupon[location]"
      assert_select "input#coupon_address[name=?]", "coupon[address]"
      assert_select "input#coupon_item[name=?]", "coupon[item]"
      assert_select "input#coupon_when[name=?]", "coupon[when]"
    end
  end
end
