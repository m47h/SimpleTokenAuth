require "rails_helper"

RSpec.describe UsersController, :type => :controller do
  let!(:admin) { FactoryGirl.create(:user, email: 'admin@loot.io', admin: true) }
  let!(:user) { FactoryGirl.create(:user) }
    
  describe "GET #index" do
    it "responds unsuccessfully with an HTTP 401 status code" do
      get :index
      expect(response).to_not be_success
      expect(response).to have_http_status(401)
    end
  end
  
  describe "GET #show" do
    it "responds unsuccessfully with an HTTP 401 status code" do
      get :show, params: { id: 1 }
      expect(response).to_not be_success
      expect(response).to have_http_status(401)
    end
  end
  
  # describe "GET #show" do
  #   it "ADMIN responds successfully with an HTTP 201 status code" do
  #     request.headers["Authorization"] = authenticated_header(admin)
  #     get :show, params: { id: admin.id }
  #     expect(response).to be_success
  #     expect(response).to have_http_status(201)
  #   end
  #
  #   it "ADMIN responds successfully with an HTTP 201 status code" do
  #     request.headers["Authorization"] = authenticated_header(user)
  #     get :show, params: { id: user.id }
  #     expect(response).to be_success
  #     expect(response).to have_http_status(201)
  #   end
  # end
  
end