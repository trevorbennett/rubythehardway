# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Trevor Bennett"]
  spec.email         = ["learnruby@trevorbennett.us"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://trevorbennett.us"
  spec.license       = "MIT"

  spec.files         = ['lib/48.rb']
  spec.executables   = ['bin/48']
  spec.test_files    = ['tests/test_48.rb']
  spec.require_paths = ["lib"]
end