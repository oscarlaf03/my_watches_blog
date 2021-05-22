require 'rails_helper'

RSpec.describe "RemotePosts", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/remote_posts/index"
      expect(response).to have_http_status(:success)
    end
  end

end
