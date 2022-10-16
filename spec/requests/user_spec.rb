require "rails_helper"
require "shoulda/matchers"

RSpec.describe Api::UsersController, type: :controller do
  describe "POST #create" do
    let(:user_params) { { :user => { name: "Test", email: "test@email.com", password: "123456789", password_confirmation: "123456789" } } }

    it "returns http success" do
      post :create, params: user_params
      expect(response).to be_successful
    end

    it "creates a new user" do
      expect do
        post :create, params: user_params
      end.to change(User, :count).by(1)
    end
  end
end
