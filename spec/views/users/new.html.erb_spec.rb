require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :firstname => "MyString",
      :phoneNumber => "MyString",
      :subscribeGroup => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_phoneNumber[name=?]", "user[phoneNumber]"
      assert_select "input#user_subscribeGroup[name=?]", "user[subscribeGroup]"
    end
  end
end
