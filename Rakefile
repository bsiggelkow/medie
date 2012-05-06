#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'restfulie-client'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

Bundler::GemHelper.install_tasks

require 'jeweler'
require './lib/medie/version'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "medie"
  gem.version = Medie::VERSION
  gem.summary = %Q{A gem that allows you register media types and unmarshal/marshal data accordingly}
  gem.description = %Q{A gem that allows you register media types and unmarshal/marshal data accordingly}
  gem.email = "guilherme.silveira@caelum.com.br"
  gem.homepage = "http://restfulie.caelumobjects.com"
  gem.licenses    = ["MIT"]
  gem.authors = ["Guilherme Silveira"]
  gem.files = gem.files.exclude 'spec/**/*'
end
Jeweler::RubygemsDotOrgTasks.new


task :default => :spec
