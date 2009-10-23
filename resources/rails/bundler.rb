inside 'gems/bundler' do  
  run 'git init'
  run 'git pull --depth 1 git://github.com/wycats/bundler.git' 
  run 'rm -rf .git .gitignore'
end

file 'script/bundle', %{
#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), "..", "gems/bundler/lib"))
require 'rubygems'
require 'bundler/commands/bundle_command'
Gem::Commands::BundleCommand.new.invoke(*ARGV)
}.strip

run 'chmod +x script/bundle'

file 'Gemfile', %{
clear_sources
source 'http://gemcutter.org'
source 'http://gems.github.com'  

disable_system_gems

bundle_path 'gems'

gem 'rails'
gem 'ruby-debug', :except => 'production'
}.strip
  
append_file '.gitignore', %{
gems/*
!gems/cache
!gems/bundler
}.strip

append_file '/config/preinitializer.rb', 'require File.expand_path(File.join(File.dirname(__FILE__), "..", "gems", "environment"))'

gem_loading = %{
# As we're using GemBundler, replace rails default gem loading with that from the bundler

Rails::Initializer.module_eval do 
  def load_gems
    Bundler.require_env RAILS_ENV
  end
end  
}.strip

gsub_file 'config/environment.rb', 'Rails::Initializer.run do |config|', "#{gem_loading}\n\nRails::Initializer.run do |config|"

run 'script/bundle'