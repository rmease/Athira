# -*- encoding: utf-8 -*-
# stub: email_validator 2.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "email_validator".freeze
  s.version = "2.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Alexander".freeze, "Karl Wilbur".freeze]
  s.date = "2022-11-09"
  s.description = "An email validator for Rails 3+. See homepage for details: http://github.com/K-and-R/email_validator".freeze
  s.email = "karl@kandrsoftware.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze, "CHANGELOG.md".freeze]
  s.files = ["CHANGELOG.md".freeze, "LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/K-and-R/email_validator".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "An email validator for Rails 3+.".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activemodel>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activemodel>.freeze, [">= 0"])
  end
end
