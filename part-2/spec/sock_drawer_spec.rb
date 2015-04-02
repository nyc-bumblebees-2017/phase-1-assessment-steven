require_relative "spec_helper"

describe SockDrawer do
  let(:left_white_sock)  { Sock.new(brand: "Nike", style: "quarter", color: "white") }
  let(:right_white_sock) { Sock.new(brand: "Nike", style: "quarter", color: "white") }
  let(:left_red_sock)    { Sock.new(brand: "Nike", style: "quarter", color: "red") }
  let(:left_black_sock)    { Sock.new(brand: "Nike", style: "quarter", color: "black") }

  let(:socks) { [left_white_sock, left_black_sock, left_red_sock, right_white_sock] }

  let(:matcher) { SockMatcher.new }

  let(:drawer) { SockDrawer.new(socks: socks, matcher: matcher) }

  it "has socks" do
    expect(drawer.socks).to match_array socks
  end

  it "has a matcher" do
    expect(drawer.matcher).to eq matcher
  end
end
