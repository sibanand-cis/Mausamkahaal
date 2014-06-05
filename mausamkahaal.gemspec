# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mausamkahaal/version'

Gem::Specification.new do |spec|
  spec.name          = "mausamkahaal"
  spec.version       = Mausamkahaal::VERSION
  spec.authors       = ["Sivanand"]
  spec.email         = ["sibananda.k@cisinlabs.com"]
  spec.summary       = %q{Fetches the weather forecast for next 7 days.}
  spec.description   = %q{Fetches the weather forecast for next 7 days from george-vustrey-weather and mashape api.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'unirest', '~> 1.1', '>= 1.1.2'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rake', '~> 0'
end
