require_relative '../road_trip'

RSpec.describe RoadTrip do

  let(:segments) { [double('Segment', miles: 500), double('Segment', miles: 750)] }
  let(:road_trip) { RoadTrip.new(name: 'Trip to SF', participants: %w(Juanita Sam Nadia), segments: segments) }

  describe 'attributes' do
    it 'has a name' do
      expect(road_trip.name).to eq 'Trip to SF'
    end

    it 'allows updates to name' do
      road_trip.name = 'Trip to NYC'
      expect(road_trip.name).to eq 'Trip to NYC'
    end

    it 'has participants' do
      expect(road_trip.participants).to match_array %w(Juanita Sam Nadia)
    end

    it 'has segments' do
      expect(road_trip.segments).to match_array [segment]
    end
  end

  describe 'working with segments' do
    describe '#add_segment' do
      it 'adds object to segement collection' do
        new_segment = double('New Segment')
        road_trip.add_segment(new_segment)
        expect(road_trip.segments).to include new_segment
      end
    end

    describe 'distance calculations' do
      describe '#total_miles' do
        it 'sums the miles of each segment' do
          expect(road_trip.total_miles).to eq 1250
        end
      end

      describe '#average_miles_per_segment' do
        it 'averages the miles of the trip over the segments' do
          expect(road_trip.average_miles_per_segment).to eq 625
        end
      end
    end
  end
end
