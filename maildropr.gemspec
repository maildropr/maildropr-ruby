# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maildropr/version'

Gem::Specification.new do |spec|
  spec.name          = "maildropr"
  spec.version       = MailDropr::VERSION
  spec.authors       = ["MailDropr"]
  spec.email         = ["kyle@graphicflash.com"]
  spec.description   = "A ruby wrapper for the MailDropr API"
  spec.summary       = spec.description
  spec.homepage      = "http://github.com/maildropr/maildropr-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end
