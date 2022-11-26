require 'rails_helper'

RSpec.describe 'Entities', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Toussaint Saraza', password: '12345678', email: 'try@gmail.com')
    @group = @user.groups.create(name: 'Birthday', icon: 'https://google.com')
    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get group_entities_path(@group)
      expect(response).to have_http_status(:success)
    end
  end
end
