# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'loggly-ruby-client/version'

Gem::Specification.new do |gem|
  gem.name          = "loggly-ruby-client"
  gem.version       = LogglyRubyClient::VERSION
  gem.authors       = ["brettweavnet"]
  gem.email         = ["open-source-845@weav.net"]
  gem.description   = %q{Client to search Loggly}
  gem.summary       = %q{Client to search Loggly}
  gem.homepage      = "https://github.com/brettweavnet/loggly-ruby-client"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"

  gem.add_runtime_dependency 'httparty'
  gem.add_runtime_dependency 'trollop'
end
