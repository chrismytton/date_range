# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_range/version'

Gem::Specification.new do |spec|
  spec.name          = 'date-range'
  spec.version       = DateRange::VERSION
  spec.authors       = ['EveryPolitician']
  spec.email         = ['team@everypolitician.org']

  spec.summary       = "Ruby port of Perl's Date::Range"
  spec.homepage      = 'https://github.com/everypolitician/date_range'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'pry'
end
