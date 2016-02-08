# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rosie-aws/version'

Gem::Specification.new do |spec|
  spec.name          = "rosie-aws"
  spec.version       = RosieAWS::VERSION
  spec.authors       = ["Nephtali Rodriguez"]
  spec.email         = ["nrodriguez@xogrp.com"]

  spec.summary       = "A ruby gem that gives you functionality to clean up different types of AWS resources"
  spec.description   = %q{A ruby gem that gives you functionality to clean up different types of AWS resources }
  spec.homepage      = "https://github.com/xogroup/rosie-aws"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "aws-sdk"
  spec.add_dependency "aws_config"
  spec.add_dependency "thor"
end
