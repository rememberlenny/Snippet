require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :dishType => "Dish Type",
      :dish => "Dish",
      :ingredientsSimplified => "Ingredients Simplified",
      :ingredients => "Ingredients",
      :nutrition => "Nutrition",
      :directions => "Directions",
      :serves => "Serves"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dish Type/)
    rendered.should match(/Dish/)
    rendered.should match(/Ingredients Simplified/)
    rendered.should match(/Ingredients/)
    rendered.should match(/Nutrition/)
    rendered.should match(/Directions/)
    rendered.should match(/Serves/)
  end
end
