# Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec, cmd: "bundle exec rspec", all_on_start: false do
  watch(%r{attributes/.+\.rb$})
  watch(%r{providers/.+\.rb$})
  watch(%r{recipes/.+\.rb$})
  watch(%r{resources/.+\.rb$})
  watch(%r{^templates/(.+)})
  watch("metadata.rb")
end

guard :rspec, cmd: "bundle exec rspec", all_on_start: false do
  watch(%r{^spec/(.+)_spec\.rb$})
  watch(%r{^(recipes)/(.+)\.rb$})   { |m| "spec/#{m[1]}_spec.rb" }
  watch("spec/spec_helper.rb")      { "spec" }
end

guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

guard :bundler do
  require "guard/bundler"
  require "guard/bundler/verify"
  helper = Guard::Bundler::Verify.new
  files = ["Gemfile"]
  files += Dir["*.gemspec"] if files.any? { |f| helper.uses_gemspec?(f) }
  # Assume files are symlinked from somewhere
  files.each { |file| watch(helper.real_path(file)) }
end

guard "bundler_audit", run_on_start: true do
  watch("Gemfile.lock")
end
