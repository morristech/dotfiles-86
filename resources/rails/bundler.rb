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

gem 'rails', '#{Rails::VERSION::STRING}'
gem 'ruby-debug', :except => 'production'
}.strip
  
append_file '.gitignore', %{
gems/*
!gems/cache
!gems/bundler}

append_file '/config/preinitializer.rb', %{
require File.expand_path(File.join(File.dirname(__FILE__), "..", "gems", "environment"))

# Hijack rails initializer to load the bundler gem environment before loading the rails environment.
class Rails::Boot
  def run
    load_initializer
    hijack_initializer_to_require_bundler_env
    Rails::Initializer.run(:set_load_path)
  end
 
  def hijack_initializer_to_require_bundler_env
    Rails::Initializer.module_eval do
      alias load_environment_without_bundler load_environment
      
      def load_environment
        Bundler.require_env configuration.environment
        load_environment_without_bundler
      end
    end
  end
end}

run 'script/bundle'