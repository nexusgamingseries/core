# frozen_string_literal: true

RSpec.describe TeamsController, type: :controller do
  let(:valid_attributes) do
    {
      logo_url: 'http://www.example.com/logo.jpg',
      name: 'Example Team Name'
    }
  end

  describe 'GET #index' do
    before { create(:team) }

    it 'returns http success' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    let!(:team) { create(:team) }

    it 'returns http success' do
      get :show, params: { id: team.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #create' do
    context 'with valid params' do
      it 'creates a new Team' do
        expect {
          post :create, params: { team: valid_attributes }
        }.to change(Team, :count).by(1)
      end

      it 'redirects to the created team' do
        post :create, params: { team: valid_attributes }
        expect(response).to redirect_to(Team.last)
      end
    end

    # TODO: Remove this test (here for example).
    # Cannot force this as data types on the model are strings and nil values
    # are coerced into strings when passed into a controller.
    #
    # context 'with invalid params' do
    #   it 'does not save team to database' do
    #     expect {
    #       post :create, params: { team: { name: nil } }
    #     }.not_to change(Team, :count)
    #   end
    # end
  end
end
