require 'spec_helper'

describe "pets/show" do
  before(:each) do
    @pet = assign(:pet, stub_model(Pet,
      :title => "Title",
      :body => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
  end
end
