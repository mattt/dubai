# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dubai/version"

Gem::Specification.new do |s|
  s.name        = "dubai"
  s.authors     = ["Mattt Thompson"]
  s.email       = "m@mattt.me"
  s.homepage    = "http://github.com/mattt/dubai"
  s.version     = Dubai::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Passbook pass generation and preview"
  s.description = ""

  s.add_dependency "json", "~> 1.7.3"
  s.add_dependency "commander", "~> 4.1.2"
  s.add_dependency "terminal-table", "~> 1.4.5"
  s.add_dependency "sinatra"
  s.add_dependency "rubyzip"

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "simplecov"

  s.files         = Dir["./**/*"].reject { |file| file =~ /\.\/(bin|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
