# frozen_string_literal: true

require File.expand_path("lib/payment_processing_interventions/version", __dir__)

Gem::Specification.new do |spec|
  spec.name = "payment-processing-interventions"
  spec.version = PaymentProcessingInterventions::VERSION
  spec.authors = ["Mike Fisher", "Stephen Binns"]
  spec.email = ["mfisher@gocardless.com", "sbinns@gocardless.com"]

  spec.summary = "Libraries and scripts to instrument payment processing reliability"
  spec.homepage = "https://github.com/gocardless/payment-processing-interventions"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/gocardless"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile.txt])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Do not include private dependencies in the gemspec as this leads to dependency confusion
  # if not authed with GH packages.
  spec.add_dependency "sorbet-runtime"
  spec.add_dependency "zeitwerk"
end
