require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  let(:recipe) {
    Recipe.create!(
      name: "MyString",
      prep_time: 1.5,
      cooking_time: 1.5,
      description: "MyText",
      public: false
    )
  }

  before(:each) do
    assign(:recipe, recipe)
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(recipe), "post" do

      assert_select "input[name=?]", "recipe[name]"

      assert_select "input[name=?]", "recipe[prep_time]"

      assert_select "input[name=?]", "recipe[cooking_time]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "input[name=?]", "recipe[public]"
    end
  end
end
