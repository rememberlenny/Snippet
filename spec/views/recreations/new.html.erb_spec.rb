require 'spec_helper'

describe "recreations/new" do
  before(:each) do
    assign(:recreation, stub_model(Recreation,
      :name => "MyString",
      :location => "MyString",
      :address => "MyString",
      :audience => "MyString",
      :info => "MyString",
      :days => "MyString",
      :timeOfDay => "MyString"
    ).as_new_record)
  end

  it "renders new recreation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recreations_path, "post" do
      assert_select "input#recreation_name[name=?]", "recreation[name]"
      assert_select "input#recreation_location[name=?]", "recreation[location]"
      assert_select "input#recreation_address[name=?]", "recreation[address]"
      assert_select "input#recreation_audience[name=?]", "recreation[audience]"
      assert_select "input#recreation_info[name=?]", "recreation[info]"
      assert_select "input#recreation_days[name=?]", "recreation[days]"
      assert_select "input#recreation_timeOfDay[name=?]", "recreation[timeOfDay]"
    end
  end
end
