require 'spec_helper'

describe "main page" do

  it "displays the title of the page" do
    visit '/'
    expect(page).to have_selector('h1', :text => "The Top 10 Cities Where My Friends Live")
  end

end