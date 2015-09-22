# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shuffler/version'

Gem::Specification.new do |spec|
  spec.name          = "shuffler"
  spec.version       = Shuffler::VERSION
  spec.authors       = ["Stanly Lau"]
  spec.email         = ["stanly@odd-e.com"]

  spec.summary       = %q{Shuffle with ease}
  spec.description   = %q{This experimental gem provides you the ability to shuffle a list.}
  spec.homepage      = "https://github.com/stanlylau/shuffler"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
