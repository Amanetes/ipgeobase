# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name = "ipgeobase"
  spec.version = Ipgeobase::VERSION
  spec.authors = ["Sergey Fatyukhin"]
  spec.email = ["ser_8904@mail.ru"]

  spec.summary = "Get IP address metadata."
  spec.description = "Get IP address metadata."
  spec.homepage = "https://github.com/Amanetes/ipgeobase"
  spec.required_ruby_version = Gem::Requirement.new('>= 3.1.2')

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Amanetes/ipgeobase"
  spec.metadata["changelog_uri"] = "https://github.com/Amanetes/ipgeobase"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end