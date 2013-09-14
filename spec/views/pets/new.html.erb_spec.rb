require 'spec_helper'

describe "pets/new" do
  before(:each) do
    assign(:pet, stub_model(Pet,
      :title => "MyString",
      :body => "MyText",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new pet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pets_path, "post" do
      assert_select "input#pet_title[name=?]", "pet[title]"
      assert_select "textarea#pet_body[name=?]", "pet[body]"
      assert_select "input#pet_image[name=?]", "pet[image]"
    end
  end
end
