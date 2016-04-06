source "https://rubygems.org"
ruby "2.3.0"

gem "test-kitchen"
gem "kitchen-vagrant"
gem "kitchen-docker"
gem "kitchen-openstack"
gem "berkshelf"
gem "busser"
gem "pry"


group :development do
  gem "rubocop", require: false
  gem "foodcritic", require: false
  gem "reek", require: false
  gem "overcommit", require: false
  gem "guard"
  gem "guard-foodcritic"
  gem "guard-rspec"
  gem "guard-rubocop"
  gem "guard-bundler", require: false
  gem "guard-bundler-audit"
end

group :development, :test do
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "serverspec"
  gem "chefspec"
  gem "leibniz"
end
