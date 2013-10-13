require 'spec_helper'

describe "coupons/new" do
  before(:each) do
    assign(:coupon, stub_model(Coupon,
      :name => "MyString",
      :location => "MyString",
      :address => "MyString",
      :item => "MyString",
      :when => "MyString"
    ).as_new_record)
  end

  it "renders new coupon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coupons_path, "post" do
      assert_select "input#coupon_name[name=?]", "coupon[name]"
      assert_select "input#coupon_location[name=?]", "coupon[location]"
      assert_select "input#coupon_address[name=?]", "coupon[address]"
      assert_select "input#coupon_item[name=?]", "coupon[item]"
      assert_select "input#coupon_when[name=?]", "coupon[when]"
    end
  end
end
