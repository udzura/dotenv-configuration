# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotenv/configuration/version'

Gem::Specification.new do |spec|
  spec.name          = "dotenv-configuration"
  spec.version       = Dotenv::Configuration::VERSION
  spec.authors       = ["Uchio KONDO"]
  spec.email         = ["udzura@udzura.jp"]
  spec.description   = "A utility method for using dotenv as a configuration manager"
  spec.summary       = "A utility method for using dotenv as a configuration manager"
  spec.homepage      = "https://github.com/udzura/dotenv-configuration"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "dotenv", ">= 0.10"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec", "~> 2.0"
end
