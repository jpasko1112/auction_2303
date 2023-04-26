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
    @items.flat_map { |item| item.bids.keys.map { |bidder| bidder.name } }.uniq
  end

  def bidder_info
    # require 'pry'; binding.pry
    attendees_hash = {}
      @items.each do |item|
        item.bids.each do |attendee, bid_amount|
        unless attendees_hash.has_key?(attendee)
          attendees_hash[attendee] = {
            budget: attendee.budget,
            items: []
          }
        end
        attendees_hash[attendee][:items] << item
        attendees_hash[attendee][:items].sort_by!
      end
    end
    attendees_hash
  end
end