# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "net-ldap-auth"
  spec.version       = "0.0.1"
  spec.authors       = ["Frostdot"]
  spec.email         = ["frostdot@gmail.com"]
  spec.summary       = %q{Allows simple authentication for LDAP with net-ldap gem}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/frostdot/net-ldap-auth/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_dependency "net-ldap"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
