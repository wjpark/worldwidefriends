require 'spec_helper'

describe ChartController do

  describe "statusboard" do
    it "must respond successfuly to statusboard.json" do
      get :statusboard
      expect(response).to be_success
    end

  end
end

  describe "index" do
    it "responds successfuly" do
      expect(response).to be_success
    end
  end

  describe "#morris" do
    it "responds successfuly" do
      get :morris
      expect(response).to be_success
    end

    it "assigns a data array" do
      get :morris
      expect(assigns(:locations)).to be_an Array

    end
  end

