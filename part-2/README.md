# Part 2: Work with a Collection
## Summary
In this part of the assessment, we are going to be working with a collection of objects.  We've been provided three classes and tests that describe the behaviors of the classes.  Take a look at the provided code before moving on to completing this part of the assessment.

### `Sock` and `SockMatcher`
The `Sock` and `SockMatcher` classes have been written for us.  Furthermore tests, have been provided that describe the behaviors of these classes.  Read the code for these classes and the test code because we'll be working with these objects later

### `SockDrawer`
The `SockDrawer` class is somewhat complete.  We can initialize an instance of `SockDrawer` with a collection of socks and a matcher.  The challenge for this part of the assessment is to write methods that provide a `SockDrawer` instance with ways of interacting with its socks.  The desired behaviors have been described in tests:

- A sock drawer will be able to match one of its socks to a given sock.
- A sock drawer will be able to match two of its own socks.

## Releases
### Release 0: `SockDrawer#match_for`
In the tests for the `SockDrawer` class is an example group `"#match_for"` that describe what should happen when a sock drawer matches one of its socks to a given sock.  Run the tests.  The three tests in the example group should be failing.  Update the `SockDrawer` class in `sock_drawer.rb` to make the tests pass.

*Do not modify the tests.*

### Release 1:  `SockDrawer#random_pair`
In the tests for the `SockDrawer` class is an example group `"#random_pair"`.  The example group is currently marked as pending.

On Line 46, change `true` to `false`.  The line should then read ...

```ruby
describe "#random_pair", { pending: false } do
```

After making the change, run the tests to see the examples in this group fail.  Update the `SockDrawer` class in `sock_drawer.rb` to make the tests pass.

*Do not modify the tests.*

## Conclusion
Once all the tests have passed, you have completed Part 2 of the assessment.  If you haven't done so already, commit your changes and move on to Part 3.
