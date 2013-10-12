require 'spec_helper'

describe StaticPagesController do

  describe "GET 'sign-in'" do
    it "returns http success" do
      get 'sign-in'
      response.should be_success
    end
  end

end
