# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "top/version"

Gem::Specification.new do |s|
  s.name        = "top"
  s.version     = Top::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["BlueBu"]
  s.email       = ["bluebu@hi-ruby.com"]
  s.homepage    = "http://www.hi-ruby.com"
  s.summary     = %q{淘宝api}
  s.description = %q{淘宝api}

  s.rubyforge_project = "top"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
