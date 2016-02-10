# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kerb/version'

Gem::Specification.new do |s|
  s.name    = 'kerb'
  s.version = Kerb.version
  s.author  = 'Sebastiaan de Geus'
  s.email   = ['sebastiaan@hoppinger.com']

  s.summary     = 'Easily render ERB'
  s.description = 'Kerb renders ERB strings, templates and files'
  s.homepage    = 'https://github.com/sebastiaandegeus/kerb'
  s.license     = 'MIT'

  s.require_paths = ['lib']
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 10.5'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'fakefs', '~> 0.8'
end
