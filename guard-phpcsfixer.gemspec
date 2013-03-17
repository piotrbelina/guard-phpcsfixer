# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/phpcsfixer/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-phpcsfixer"
  spec.version       = Guard::Phpcsfixer::VERSION
  spec.authors       = ["Piotr Belina"]
  spec.email         = ["piotr@piotrbelina.com"]
  spec.description   = %q{PHP CS Fixer}
  spec.summary       = %q{PHP CS Fixer}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
