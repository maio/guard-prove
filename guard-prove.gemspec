# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/prove'

Gem::Specification.new do |s|
  s.name        = 'guard-prove'
  s.version     = Guard::Prove::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Marian Schubert']
  s.email       = ['marian.schubert@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/guard-prove'
  s.summary     = 'Guard gem for prove'
  s.description = 'Guard::Prove automatically run your Perl tests (much like autotest)'
  
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'guard-prove'
  
  s.add_dependency 'guard', '>= 0.3.0'
  s.add_dependency 'systemu', '>= 1.2.0'
  
  s.add_development_dependency 'bundler', '~> 1.0.7'
  s.add_development_dependency 'rspec',   '~> 2.2.0'
  
  s.files        = Dir.glob('{lib}/**/*') + %w[LICENSE README.rdoc]
  s.require_path = 'lib'
end
