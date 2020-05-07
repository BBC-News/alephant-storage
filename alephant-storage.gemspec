# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alephant/storage/version'

Gem::Specification.new do |spec|
  spec.name          = "alephant-storage"
  spec.version       = Alephant::Storage::VERSION
  spec.authors       = ["BBC News"]
  spec.email         = ["D&ENewsFrameworksTeam@bbc.co.uk"]
  spec.summary       = "Simple abstraction layer over S3 for get/put."
  spec.homepage      = "https://github.com/BBC-News/alephant-storage"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "aws-sdk-s3"
  spec.add_runtime_dependency 'alephant-logger'
end
