# frozen_string_literal: true

require_relative "lib/coreml_predict/version"

Gem::Specification.new do |spec|
  spec.name = "coreml_predict"
  spec.version = CoreMLPredict::VERSION
  spec.authors = ["Eric-Guo"]
  spec.email = ["eric.guocz@gmail.com"]

  spec.summary = "Run predict using Apple CoreML Model 3 or later."
  spec.description = "MLModel (ext name mlpackage) is an Apple format AI model, this gem provide *predict* method to run those AI model in MacOS using ruby."
  spec.homepage = "https://github.com/Eric-Guo/coreml_predict"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Eric-Guo/coreml_predict"
  spec.metadata["changelog_uri"] = "https://github.com/Eric-Guo/coreml_predict/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci .idea Gemfile appveyor Rakefile coreml-predict.code-workspace coreml-predict.sublime-project])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/coreml_predict/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
