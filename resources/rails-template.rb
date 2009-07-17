# Delete unnecessary files
run "rm README"
run "rm doc/README_FOR_APP"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"

# Remove test/unit, and add rspec + cucumber

run "rm -rf test"

gem "rspec", :lib => false, :version => ">= 1.2.2" 
gem "rspec-rails", :lib => false, :version => ">= 1.2.2"
gem 'notahat-machinist', :lib => false
gem 'faker'
gem 'fakeweb'

generate 'rspec'
generate 'cucumber'

# Setup gitignore file

file '.gitignore', <<-END
.DS_Store
coverage/*
log/*.log
db/*.db
db/*.sqlite3
db/schema.rb
tmp/**/*
doc/api
doc/app
config/database.yml
END

# Remove logs files and preserve empty directories

run "rm log/*"
run 'find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;'

rake 'gems:install'
rake 'gems:unpack'

file 'spec/blueprints.rb', %{
require 'machinist/active_record'
require File.expand_path(File.dirname(__FILE__) + "/blueprints/shams")

Dir[File.expand_path(File.dirname(__FILE__)) + "/blueprints/*_blueprint.rb"].each do |blueprint|
  require blueprint
end
}

file 'spec/blueprints/shams.rb', %{
require 'faker'

Sham.email { Faker::Internet.email }
Sham.hostname { Faker::Internet.domain_name }
}

spec_helper = File.open("spec/spec_helper.rb").read
file "spec/spec_helper.rb", spec_helper.gsub("Spec::Runner.configure do |config|", "require File.expand_path(File.dirname(__FILE__) + '/blueprints.rb')\n\nSpec::Runner.configure do |config|")

cucumber_env = File.open("features/support/env.rb").read
file "features/support/env.rb", cucumber_env.gsub("require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')", "require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')\nrequire File.expand_path(File.dirname(__FILE__) + '/../../spec/blueprints')")

file "spec/spec.opts", %{--colour\n--format nested}

# remove prototype and scriptaculous, and install jquery instead

run "rm -f public/javascripts/*"
run "curl http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js > public/javascripts/jquery.1.3.2.min.js"
run "curl http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js > public/javascripts/jquery-ui.1.7.2.min.js"

git :init
git :add => "."
git :commit => "-a -m 'Initial commit after generation from template'"

