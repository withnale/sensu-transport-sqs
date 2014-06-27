# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "sensu-transport-sqs"
  spec.version       = "0.0.1"
  spec.authors       = ["Yoriki Yamaguchi"]
  spec.email         = ["yorikiyamaguchi@gmail.com"]
  spec.summary       = "Adding Amazon SQS support to Sensu Transport"
  spec.description   = "Adding Amazon SQS support to Sensu Transport"
  spec.homepage      = "https://github.com/y13i/sensu-transport-sqs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("sensu-transport")
  spec.add_dependency("aws-sdk")

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "eventmachine"
end
