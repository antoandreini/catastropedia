# -*- encoding: utf-8 -*-
# stub: octicons 7.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "octicons"
  s.version = "7.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["GitHub Inc."]
  s.date = "2018-05-09"
  s.description = "A package that distributes Octicons in a gem"
  s.email = ["support@github.com"]
  s.homepage = "https://github.com/primer/octicons"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.2.1"
  s.summary = "GitHub's octicons gem"

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.6.3.1"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.6.3.1"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.6.3.1"])
  end
end
