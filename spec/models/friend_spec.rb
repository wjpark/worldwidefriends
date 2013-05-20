require 'spec_helper'

describe Location do

  it "fetches locations list" do
    pending
    location = Location.new
    locations = location.fetch_locations
    expect(locations).to be_an Array
    expect(locations.size).to eq 10
  end

end