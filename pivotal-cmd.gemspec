# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pivotal-cmd/version'

Gem::Specification.new do |gem|
  gem.name          = "pivotal-cmd"
  gem.version       = Pivotal::Cmd::VERSION
  gem.authors       = ["tulios"]
  gem.email         = ["ornelas.tulio@gmail.com"]
  gem.description   = %q{A command line tool for pivotal}
  gem.summary       = %q{Command line tool for pivotal}
  gem.homepage      = "https://github.com/tulios/pivotal-cmd"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rest-client", "1.6.7"
  gem.add_dependency "colored", "1.2"
  gem.add_dependency "nokogiri", "1.5.5"

  gem.add_development_dependency "debugger", "1.2.0"
  gem.add_development_dependency 'rspec', "2.11.0"
end
