# -*- encoding: utf-8 -*-
# stub: bourbon 5.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bourbon".freeze
  s.version = "5.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Christian Reuter".freeze, "Damian Galarza".freeze, "Gabe Berke-Williams".freeze, "Hugo Giraudel".freeze, "Joshua Ogle".freeze, "Kyle Fiedler".freeze, "Phil LaPier".freeze, "Reda Lemeden".freeze, "Tyson Gach".freeze, "Will McMahan".freeze]
  s.date = "2018-01-05"
  s.description = "    Bourbon is a library of pure Sass mixins and functions that are designed to\n    make you a more efficient developer.\n".freeze
  s.email = "design+bourbon@thoughtbot.com".freeze
  s.executables = ["bourbon".freeze]
  s.files = ["bin/bourbon".freeze]
  s.homepage = "http://bourbon.io".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.4".freeze
  s.summary = "A lightweight Sass tool set.".freeze

  s.installed_by_version = "2.7.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.6.2"])
      s.add_development_dependency(%q<css_parser>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<scss_lint>.freeze, ["= 0.48"])
      s.add_runtime_dependency(%q<sass>.freeze, ["~> 3.4"])
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.19"])
    else
      s.add_dependency(%q<aruba>.freeze, ["~> 0.6.2"])
      s.add_dependency(%q<css_parser>.freeze, ["~> 1.4"])
      s.add_dependency(%q<rake>.freeze, ["~> 11.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_dependency(%q<scss_lint>.freeze, ["= 0.48"])
      s.add_dependency(%q<sass>.freeze, ["~> 3.4"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
    end
  else
    s.add_dependency(%q<aruba>.freeze, ["~> 0.6.2"])
    s.add_dependency(%q<css_parser>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<scss_lint>.freeze, ["= 0.48"])
    s.add_dependency(%q<sass>.freeze, ["~> 3.4"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
  end
end
