# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'duoruby/version'

Gem::Specification.new do |spec|
  spec.name          = "duoruby"
  spec.version       = duoruby::VERSION
  spec.authors       = ["David Wilemski, Adam Goodman, Ben Duo, alichator, Michael Krisher"]
  spec.email         = ["david@davidwilemski.com, mike@mikekrisher.com"]
  spec.summary       = %q{Gem for using Duo 2fa}
  spec.description   = %q{Gem wrapper for the Ruby and JS files needed for Duo 2fa}
  spec.homepage      = "https://github.com/duosecurity/duo_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

