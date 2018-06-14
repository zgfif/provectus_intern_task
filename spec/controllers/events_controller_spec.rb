require 'rails_helper'

RSpec.describe EventsController, type: :controller do
	context 'GET #index' do
		it 'returns a success response' do
			get :index
			expect(response).to be_success # response.success?
		end
	end
	context 'GET #show' do
		it 'returns a success response'	do
			event = Event.create!(title: 'Grumpy', tag: 'cat', scheduled_date: '2018-06-15' )
			get :show, params: {id: event.to_param}
			expect(response).to be_success
		end		
	end
	context 'GET #new' do
		it 'returns a failure response' do
			get :index
			expect(response).to be_success
		end
	end
end
