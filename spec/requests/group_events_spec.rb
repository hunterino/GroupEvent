require 'rails_helper'

RSpec.describe 'GroupEvents API', type: :request do
  # initialize test data
  let!(:group_events) { create_list(:group_event, 5) }
  let(:group_event_id) { group_events.first.id }
  let(:name) { "GroupEvents" }
  # Test suite for GET /group_events
  describe 'GET /group_events' do
    # make HTTP get request before each example
    before { get '/group_events' }

    it 'returns group_events' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /group_events/:id
  describe 'GET /group_events/:id' do
    before { get "/group_events/#{group_event_id}" }

    context 'when the record exists' do
      it 'returns the group_event' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(group_event_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:group_event_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/{"message":"Couldn't find GroupEvent with 'id'=100"}/)
      end
    end
  end

  # Test suite for PUT /group_events/:id
  describe 'PUT /group_events/:id' do
    let(:valid_attributes) { { title: 'Shopping' } }

    context 'when the record exists' do
      before { put "/group_events/#{group_event_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /group_events/:id
  describe 'DELETE /group_events/:id' do
    before { delete "/group_events/#{group_event_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end