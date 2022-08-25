# frozen_string_literal: true

require_relative "lib/r00lz/version"

Gem::Specification.new do |spec|
  spec.name = "r00lz"
  spec.version = R00lz::VERSION
  spec.authors = ["Gustavo Carvalho"]
  spec.email = ["gustavo.hcarvalho@outlook.com"]

  spec.summary = "Web Framework based on Rails - Rebuilding Rails."
  spec.description = "Web Framework for studies purposes"
  spec.homepage = "http://nowebpageyet.com/r00lz"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "No gem server"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://non-public-yet"
  spec.metadata["changelog_uri"] = "https://changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_runtime_dependency "rack", "~> 2.0.7"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
