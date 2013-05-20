# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-cloudsdale/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Philip Vieira"]
  gem.email         = ["philip@vallin.se"]
  gem.description   = %q{OmniAuth strategy for Cloudsdale.}
  gem.summary       = %q{OmniAuth strategy for Cloudsdale.}
  gem.homepage      = "https://github.com/IOMUSE/omniauth-cloudsdale"
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-cloudsdale"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Cloudsdale::VERSION

  gem.required_ruby_version     = '>= 1.8.7'
  gem.required_rubygems_version = '>= 1.8.11'

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
