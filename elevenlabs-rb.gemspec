# frozen_string_literal: true

require_relative "lib/elevenlabs/rb/version"

Gem::Specification.new do |spec|
  spec.name = "elevenlabs-rb"
  spec.version = Elevenlabs::Client::VERSION
  spec.authors = ["Stephen Schor"]

  spec.summary = "A VERY light wrapper on top of elevenlabs's API."
  spec.description = "A VERY light wrapper on top of elevenlabs's API. For people who have accounts."
  spec.homepage = "https://github.com/nodanaonlyzuul/elevenlabs-rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nodanaonlyzuul/elevenlabs-rb"
  spec.metadata["changelog_uri"] = "https://github.com/nodanaonlyzuul/elevenlabs-rb/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "http", "5.1.1"
  spec.add_development_dependency "pry"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
