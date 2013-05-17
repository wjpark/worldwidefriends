require 'spec_helper'

describe ChartController do

  it "must respond to statusboard.json" do
    get :statusboard
    expect(response).to be_success
  end

  it "must get Facebook data" do

  end

end
