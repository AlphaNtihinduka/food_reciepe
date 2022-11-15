require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    assign(:recipe, Recipe.create!(
      name: "Name",
      prep_time: 2.5,
      cooking_time: 3.5,
      description: "MyText",
      public: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
