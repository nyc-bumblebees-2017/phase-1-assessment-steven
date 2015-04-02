require_relative "spec_helper"

describe SockDrawer do
  let(:socks) { [left_white_sock, left_black_sock, left_red_sock, right_white_sock] }
  let(:left_white_sock)  { Sock.new(brand: "Nike", style: "quarter", color: "white") }
  let(:right_white_sock) { Sock.new(brand: "Nike", style: "quarter", color: "white") }
  let(:left_red_sock)    { Sock.new(brand: "Nike", style: "quarter", color: "red") }
  let(:left_black_sock)    { Sock.new(brand: "Nike", style: "quarter", color: "black") }

  let(:matcher) { SockMatcher.new }

  let(:drawer) { SockDrawer.new(socks: socks, matcher: matcher) }


  it "has socks" do
    expect(drawer.socks).to match_array socks
  end

  it "has a matcher" do
    expect(drawer.matcher).to eq matcher
  end

  describe "#match_for" do
    let(:right_red_sock) { Sock.new(brand: "Nike", style: "quarter", color: "red") }

    context "when it has matching socks" do
      it "returns a matching sock" do
        expect(drawer.match_for right_red_sock).to eq left_red_sock
      end

      it "releases a matching sock from its collection of socks" do
        drawer.match_for(right_red_sock)
        expect(drawer.socks).to_not include left_red_sock
      end
    end

    context "when it has no matching socks" do
      it "returns nothing" do
        left_yellow_sock = Sock.new(brand: "Nike", style: "quarter", color: "yellow")

        expect(drawer.match_for left_yellow_sock).to be_nil
      end
    end
  end

  describe "#release_pair", { pending: true } do
    context "when it has pairs of matching socks" do
      it "returns one of its pairs of" do
        expect(drawer.release_pair).to match_array [left_white_sock, right_white_sock]
      end

      it "releases paired socks from its collection of socks" do
        drawer.release_pair

        [left_white_sock, right_white_sock].each do |paired_sock|
          expect(drawer.socks).to_not include paired_sock
        end
      end
    end

    context "when it has no pairs of matching socks" do
      it "returns a collection with no socks" do
        non_matching_socks = [left_white_sock, left_red_sock]
        drawer_with_no_matching_socks = SockDrawer.new(socks: non_matching_socks, matcher: matcher)

        expect(drawer_with_no_matching_socks.release_pair).to be_empty
      end
    end
  end
end
