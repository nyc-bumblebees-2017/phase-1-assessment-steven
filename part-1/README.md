# Part 1:  Define a Class

## Summary
In this challenge you will be defining a class that represents a road trip.  `RoadTrip` instances will have certain desired attributes and behaviors, which are described in the test suite (see `spec/road_trip_spec.rb`).

### Segments
In the test suite you will notice various `double` objects.  These objects are meant to represent instances of a `Segment` class and provide objects with the behaviors on which a `RoadTrip` instance depends.  See `segment.rb` for the `Segment` class code.

## Running the Tests
Assuming you are in the part-1 directory:
To run all the tests, you can use:

```bash
rspec spec
```

To run the tests for a specific file, you can use:
``` bash
rsepc spec spec/<file_name_goes_here>_spec.rb
```

If you would like RSpec to stop running the tests as soon as it executes a failing test, you can use the `--fail-fast` option with either of the above commands. This will cut down on the output and may make it easier to read.


## Releases
### Release 0:  `RoadTrip` Class Attributes
In the tests for the `RoadTrip` class is an example group `"attributes"` that contains tests for the desired attributes for a `RoadTrip` instance.  Run the tests.  Four tests should be failing.  Update the `RoadTrip class` in `road_trip.rb` to make the tests pass.

### Release 1:  Working with Segments
In the tests for the `RoadTrip` class is an example group `"working with segments"`.  The example group is currently marked as pending.

On Line 27, change `true` to `false`.  The line should then read ...

```ruby
describe 'working with segments', { pending: false } do
```

After making the change, run the tests to see the examples in this group fail.  Update the `RoadTrip class` in `road_trip.rb` to make the tests pass.

## Conclusion
Once all the tests have passed, you have completed Part 1 of the assessment.  If you haven't done so already, commit your changes and move on to Part 2.
