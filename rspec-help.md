## Running the Tests
Assuming you are in the challenge directory:
To run all the tests, you can use:

*Note Your machine may have an alias to short hand bundle exec to `be`*

```
bundle exec rspec spec
```

or simply:
```
bundle exec rspec
```

To run the tests for a specific file, you can use:
```
bundle exec rspec spec spec/<file_name_goes_here>_spec.rb
```
You must be in the specific challenge directory.


If you would like RSpec to stop running the tests as soon as it executes a failing test, you can use the `--fail-fast` option with any of the above commands. This will cut down on the output and may make it easier to read.
