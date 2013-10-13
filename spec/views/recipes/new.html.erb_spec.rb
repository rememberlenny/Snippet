require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :dishType => "MyString",
      :dish => "MyString",
      :ingredientsSimplified => "MyString",
      :ingredients => "MyString",
      :nutrition => "MyString",
      :directions => "MyString",
      :serves => "MyString"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipes_path, "post" do
      assert_select "input#recipe_dishType[name=?]", "recipe[dishType]"
      assert_select "input#recipe_dish[name=?]", "recipe[dish]"
      assert_select "input#recipe_ingredientsSimplified[name=?]", "recipe[ingredientsSimplified]"
      assert_select "input#recipe_ingredients[name=?]", "recipe[ingredients]"
      assert_select "input#recipe_nutrition[name=?]", "recipe[nutrition]"
      assert_select "input#recipe_directions[name=?]", "recipe[directions]"
      assert_select "input#recipe_serves[name=?]", "recipe[serves]"
    end
  end
end
