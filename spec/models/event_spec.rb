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

    it 'should appear failure' do
      event = Event.new(title: 'forest', tag: 'mist', scheduled_date: '2018').save
      expect(event).to eq(false)
    end

    it 'should save successfully' do
      event = Event.new(title: 'resort', tag: 'shiny', scheduled_date: '2018-06-29').save
      expect(event).to eq(true)
    end
    it 'should return complete - false' do
      e = Event.new(title: 'beach', tag: 'ibiza', scheduled_date: '2020-07-01')
      expect(e.complete).to_not eq(true)
    end
  end
  context 'scope tests' do
    let(:params) { { title: 'beach', tag: 'ibiza', complete: false, scheduled_date: '2020-07-01' } }
    before(:each) do
      Event.new(params).save
      Event.new(params).save
      Event.new(params).save
      Event.new(params).save
      Event.new(params.merge(complete: true)).save
    end

    it 'should return the count of all events' do
      expect(Event.all.size).to eq(5)
    end

    it 'should return the count of complete events' do
      expect(Event.complete_events.size).to eq(1)
    end

    it 'should return the count of incomplete events' do
      expect(Event.incomplete_events.size).to eq(4)
    end
  end
end
