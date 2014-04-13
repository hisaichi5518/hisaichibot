# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hisaichibot/version'

Gem::Specification.new do |spec|
  spec.name          = "hisaichibot"
  spec.version       = Hisaichibot::VERSION
  spec.authors       = ["hisaichi5518"]
  spec.email         = ["hisaichi5518@gmail.com"]
  spec.summary       = %q{hisaichibot for irc}
  spec.description   = %q{hisaichibot!!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cinch"
  spec.add_development_dependency "clockwork"
  spec.add_development_dependency "tweetstream"
end
