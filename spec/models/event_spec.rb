require 'rails_helper'

RSpec.describe Event, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'validation tests' do 
  		
  		it 'ensures title presence' do 
  			event = Event.new(tag: 'luxury', scheduled_date: '2018-06-15').save
  			expect(event).to eq(false)
  		end

  		it 'ensures tag presence' do 
  			event = Event.new(title: 'chill', scheduled_date: '2018-07-13').save
  			expect(event).to eq(false)
  		
  		end

  		it 'ensures scheduled_date presence' do 
			event = Event.new(title: 'glamour', tag: 'lure').save
  			expect(event).to eq(false)
  		
  		end

  		 it 'should appear failure'  do 
  			event = Event.new(title: 'forest', tag: 'mist', scheduled_date: '2018').save
  			expect(event).to eq(false)	
  		end

  		it 'should save successfully'  do 
  			event = Event.new(title: 'resort', tag: 'shiny', scheduled_date: '2018-06-29').save
  			expect(event).to eq(true)	
  		end
  end
  
  context 'scope tests' do 
	let (:params) {{title: 'resort', tag: 'shiny', scheduled_date: '2018-06-29'}}
	before (:each) do
		event = Event.new(params).save
		event = Event.new(params).save
		event = Event.new(params).save
		event = Event.new(params.merge(compelete: true)).save
		event = Event.new(params.merge(compelete: false)).save
		event = Event.new(params.merge(complete: false)).save
	end

	it 'should return complete events' do
		expect(Event.complete_events.size).to eq(1)
	end

	it 'should return uncomplete events' do
		expect(Event.complete_events.size).to eq(4)
	end
  end

end
