require 'spec_helper'

RSpec.describe Attendee do
  before(:each) do
    @attendee1 = Attendee.new({name: 'Megan', budget: '$50'})
    @attendee2 = Attendee.new({name: 'Bob', budget: '$75'})
    @attendee3 = Attendee.new({name: 'Mike', budget: '$100'})
  end

  describe '#initialize' do
    it 'initialize with attributes' do
      expect(@attendee1).to be_a(Attendee)
    end

    it 'has a name' do
      expect(@attendee1.name).to eq('Megan')
    end

    it 'has a budget' do
      expect(@attendee1.budget).to eq('$50')
    end
  end
end