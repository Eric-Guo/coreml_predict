# CoremlPredict

MLModel (ext name mlpackage) is an Apple format AI model, this gem provide *predict* method to run those AI model in MacOS using ruby.

## Installation

CoreML 3 only available on MacOS 13.x or later, so make sure you having a Mac.

## Usage

```ruby
require 'coreml_predict'
# load MLModel, in the current folder
model = CoreMLModel("california.mlpackage")
# Run the model
model.predict({"AveBedrms": 3, "HouseAge": 20, "AveOccup": 3})
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/coreml_predict. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/coreml_predict/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CoremlPredict project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/coreml_predict/blob/main/CODE_OF_CONDUCT.md).
