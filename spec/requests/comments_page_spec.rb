require 'rails_helper'
require 'spec_helper'

describe "static pages" do

  before { visit root_path}
  subject{page}

  it "muestra el titulo TRAXI" do
    expect(page).to have_title("TraxiWeb")
  end

end
