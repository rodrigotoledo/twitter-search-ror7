require 'rails_helper'

RSpec.describe "General Requests", type: :request do
  describe "GET /dashboard" do
    it "returns http success" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /following" do
    it "returns http success" do
      get following_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /mentions" do
    it "returns http success" do
      get mentions_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /recent_searchs" do
    it "returns http success" do
      get recent_searchs_path
      expect(response).to have_http_status(:success)
    end
  end

end