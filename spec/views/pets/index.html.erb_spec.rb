require 'spec_helper'

describe "pets/index" do
  before(:each) do
    assign(:pets, [
      stub_model(Pet,
        :title => "Title",
        :body => "MyText",
        :image => "Image"
      ),
      stub_model(Pet,
        :title => "Title",
        :body => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of pets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
