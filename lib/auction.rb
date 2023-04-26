class Auction
  attr_reader :items

  def initialize(items)
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map { |item| item.name }
  end

  def unpopular_items
    @items.select { |item| item.bids.empty? }
  end

  def potential_revenue
    @items.sum { |item| item.current_high_bid.to_i }
  end

  def bidders
    # @attendees.select { |attendee| attendee.has_bids? }.map { |attendee| attendee.name }
    @items.flat_map { |item| item.bids.keys.map { |bidder| bidder.name } }.uniq
    # require 'pry'; binding.pry
  end
end