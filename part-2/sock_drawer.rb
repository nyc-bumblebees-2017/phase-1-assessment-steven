

class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
  end

  def supply_match_for(my_sock)
   socks.select {|sock| match?(my_sock, sock)}
  end

  def supply_one_pair_of_socks
    socks.sample(2).delete
  end
end
