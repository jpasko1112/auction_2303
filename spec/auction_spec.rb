require 'spec_helper'

RSpec.describe Auction do
  before(:each) do
    @auction = Auction.new(@items = [])
    @item1 = Item.new('Chalkware Piggy Bank')
    @item2 = Item.new('Bamboo Picture Frame')
  end

  describe '#initialize' do
    it 'can initalize with attributes' do
      expect(@auction).to be_a(Auction)
    end

    it 'can have items' do
      expect(@auction.items).to eq([])
    end
  end

  describe '#add_item(item)' do
    it 'can add an item' do
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.items).to eq([@item1, @item2])
    end
  end

  describe '#item_names' do
    it 'can return the names of the items' do
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
    end
  end
end