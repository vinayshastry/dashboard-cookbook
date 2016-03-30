source "https://rubygems.org"
ruby "2.3.0"

gem "test-kitchen"
gem "kitchen-vagrant"
gem "kitchen-docker"
gem "berkshelf"
gem "busser"
gem "pry"
gem "kitchen-openstack"

group :development do
  gem "rubocop", require: false
  gem "foodcritic", require: false
  gem "reek", require: false
  gem "overcommit", require: false
end

group :development, :test do
  gem "bundler-audit", require: false
  gem "brakeman", require: false
end
