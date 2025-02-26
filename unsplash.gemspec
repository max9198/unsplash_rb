# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unsplash/version'

Gem::Specification.new do |spec|
  spec.name          = "unsplash"
  spec.version       = Unsplash::VERSION
  spec.authors       = ["Aaron Klaassen"]
  spec.email         = ["aaron@unsplash.com"]

  spec.summary       = %q{Ruby wrapper for the Unsplash API.}
  spec.homepage      = "https://github.com/unsplash/unsplash_rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "httparty", ">= 0.14.0"
  spec.add_dependency "oauth2",   ">= 1.4"
  spec.add_dependency "faraday-multipart", "~> 1.0.4"

  spec.add_development_dependency "rake",    "~> 12.3.2"
  spec.add_development_dependency "rspec",   "~> 3.8.0"
  spec.add_development_dependency "vcr",     "~> 6.1.0"
  spec.add_development_dependency "webmock", "~> 3.18.1"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls_reborn", "~> 0.25.0"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "rb-readline"
end
