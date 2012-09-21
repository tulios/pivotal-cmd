# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pivotal-cmd/version'

Gem::Specification.new do |gem|
  gem.name          = "pivotal-cmd"
  gem.version       = Pivotal::Cmd::VERSION
  gem.authors       = ["tulios"]
  gem.email         = ["tulio@corp.globo.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  s.add_dependency "rest-client", "1.6.7"
  s.add_dependency "colored", "1.2"
  s.add_dependency "nokogiri", "1.5.5"

  s.add_development_dependency "debugger", "1.2.0"
end
