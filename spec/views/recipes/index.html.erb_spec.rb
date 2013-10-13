require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :dishType => "Dish Type",
        :dish => "Dish",
        :ingredientsSimplified => "Ingredients Simplified",
        :ingredients => "Ingredients",
        :nutrition => "Nutrition",
        :directions => "Directions",
        :serves => "Serves"
      ),
      stub_model(Recipe,
        :dishType => "Dish Type",
        :dish => "Dish",
        :ingredientsSimplified => "Ingredients Simplified",
        :ingredients => "Ingredients",
        :nutrition => "Nutrition",
        :directions => "Directions",
        :serves => "Serves"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dish Type".to_s, :count => 2
    assert_select "tr>td", :text => "Dish".to_s, :count => 2
    assert_select "tr>td", :text => "Ingredients Simplified".to_s, :count => 2
    assert_select "tr>td", :text => "Ingredients".to_s, :count => 2
    assert_select "tr>td", :text => "Nutrition".to_s, :count => 2
    assert_select "tr>td", :text => "Directions".to_s, :count => 2
    assert_select "tr>td", :text => "Serves".to_s, :count => 2
  end
end
