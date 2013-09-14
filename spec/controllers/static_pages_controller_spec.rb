require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'adopt'" do
    it "returns http success" do
      get 'adopt'
      response.should be_success
    end
  end

  describe "GET 'give'" do
    it "returns http success" do
      get 'give'
      response.should be_success
    end
  end

  describe "GET 'volunteer'" do
    it "returns http success" do
      get 'volunteer'
      response.should be_success
    end
  end

end
