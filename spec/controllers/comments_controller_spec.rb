require 'rails_helper'
require 'spec_helper'

describe CommentsController do
  describe "GET Comments" do
    it "creates and renders successfully" do
      expect(response).to be_success
    end
  end
end
