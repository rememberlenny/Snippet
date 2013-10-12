require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :firstname => "MyString",
      :phoneNumber => "MyString",
      :subscribeGroup => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_phoneNumber[name=?]", "user[phoneNumber]"
      assert_select "input#user_subscribeGroup[name=?]", "user[subscribeGroup]"
    end
  end
end
