# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "medie"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Guilherme Silveira"]
  s.date = "2012-05-06"
  s.description = "A gem that allows you register media types and unmarshal/marshal data accordingly"
  s.email = "guilherme.silveira@caelum.com.br"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "autotest/discover.rb",
    "lib/medie.rb",
    "lib/medie/form_url_encoded.rb",
    "lib/medie/form_url_encoded/driver.rb",
    "lib/medie/generic.rb",
    "lib/medie/json.rb",
    "lib/medie/json/driver.rb",
    "lib/medie/json/links.rb",
    "lib/medie/link.rb",
    "lib/medie/linked.rb",
    "lib/medie/open_search.rb",
    "lib/medie/open_search/descriptor.rb",
    "lib/medie/open_search/driver.rb",
    "lib/medie/registry.rb",
    "lib/medie/version.rb",
    "lib/medie/xml.rb",
    "lib/medie/xml/driver.rb",
    "lib/medie/xml/links.rb",
    "medie.gemspec"
  ]
  s.homepage = "http://restfulie.caelumobjects.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A gem that allows you register media types and unmarshal/marshal data accordingly"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<methodize>, ["= 0.2.0"])
      s.add_runtime_dependency(%q<json_pure>, ["~> 1.7.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<i18n>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<builder>, ["~> 3.0.0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<methodize>, ["= 0.2.0"])
      s.add_dependency(%q<json_pure>, ["~> 1.7.0"])
      s.add_dependency(%q<activesupport>, [">= 3.1.0"])
      s.add_dependency(%q<i18n>, ["~> 0.6.0"])
      s.add_dependency(%q<builder>, ["~> 3.0.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<methodize>, ["= 0.2.0"])
    s.add_dependency(%q<json_pure>, ["~> 1.7.0"])
    s.add_dependency(%q<activesupport>, [">= 3.1.0"])
    s.add_dependency(%q<i18n>, ["~> 0.6.0"])
    s.add_dependency(%q<builder>, ["~> 3.0.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

