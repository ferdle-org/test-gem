# frozen_string_literal: true

source "https://rubygems.org"

# All dependencies are specified in payment-processing-interventions.gemspec
gemspec

# We have to declare private Gems here, because gemspec doesn't support them. Bundler will treat Gems listed here as
# development-only, so runtime dependencies MUST also be specified in the gemspec.
source 'https://rubygems.pkg.github.com/gocardless' do
  gem 'hesiod', '0.20.3'
  gem 'loggy', '0.30.0'
  gem 'sorbet-utils', '1.0.0.beta5'
end

group :development, :test do
  gem "gc_ruboconfig", "~> 5.0"
  gem "pry", "~> 0.15.0"
  gem "rake", "~> 13.0"
  gem "rspec", "~> 3.0"
  gem "rspec-github"
  gem "rspec-sorbet"
  gem "rubocop", "~> 1.69"
  gem "rubocop-sorbet"
  gem "sorbet"
  gem "tapioca"
  gem "timecop"
end
