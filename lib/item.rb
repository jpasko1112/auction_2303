class Item
  attr_reader :name,
              :bids,
              :bidding_closed


  def initialize(name)
    @name = name
    @bids = {}
    @bidding_closed = false
  end

  def add_bid(attendee, bid)
    if @bidding_closed
      puts "bidding on this item is closed"
    else
      @bids[attendee] = bid
    end
  end

  def current_high_bid
    @bids.values.max
  end

  def close_bidding
    @bidding_closed = true
  end
end