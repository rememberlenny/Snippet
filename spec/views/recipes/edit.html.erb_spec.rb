require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :dishType => "MyString",
      :dish => "MyString",
      :ingredientsSimplified => "MyString",
      :ingredients => "MyString",
      :nutrition => "MyString",
      :directions => "MyString",
      :serves => "MyString"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do
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
