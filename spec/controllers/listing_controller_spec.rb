require 'rails_helper'

RSpec.describe ListingController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #listing_one" do
    it "returns http success" do
      get :listing_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #pricing_one" do
    it "returns http success" do
      get :pricing_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #description_one" do
    it "returns http success" do
      get :description_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #photo_upload_one" do
    it "returns http success" do
      get :photo_upload_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #amenities_one" do
    it "returns http success" do
      get :amenities_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #location_one" do
    it "returns http success" do
      get :location_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

end
