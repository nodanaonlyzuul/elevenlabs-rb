# elevenlabs-rb

A VERY light wrapper on top of [elevenlabs's API](https://api.elevenlabs.io/docs).
**I've only implemented the endpoints I need for my personal project** but PRs are welcome!

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add elevenlabs-rb

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install elevenlabs-rb

## Usage

For arguments see [the code](https://github.com/nodanaonlyzuul/elevenlabs-rb/blob/main/lib/elevenlabs/client.rb) and
[elevenlab's API](https://api.elevenlabs.io/docs).


```ruby
require 'elevenlabs/client'

my_client = Elevenlabs::Client.new(api_key: '679c75a9fc....')

# {"voices"=>
#   [{"voice_id"=>"21m00Tcm4TlvDq8ikWAM",
#     "name"=>"Rachel",
#     "samples"=>nil,
#     "category"=>"premade",
#     "fine_tuning"=>
#      {"model_id"=>nil,
#       "language"=>nil,
#       "is_allowed_to_fine_tune"=>false,
#       "fine_tuning_requested"=>false,
#       "finetuning_state"=>"not_started",
#       "verification_attempts"=>nil,
#       "verification_failures"=>[],
#       "verification_attempts_count"=>0,
#...SNIP!

# 
binary_response = my_client.text_to_speech(voice_id: "21m00Tcm4TlvDq8ikWAM", stability: 0.1, text: "Matz is nice and so we are nice.")

File.write('wise-words.mp3', binary_response)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nodanaonlyzuul/elevenlabs-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/nodanaonlyzuul/elevenlabs-rb/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the elevenlabs-rb project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/nodanaonlyzuul/elevenlabs-rb/blob/master/CODE_OF_CONDUCT.md).
