# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gobgp_ruby/version'

# add stub dir to load path
stub = File.expand_path('../stub', __FILE__)
$LOAD_PATH.unshift(stub) unless $LOAD_PATH.include?(stub)

Gem::Specification.new do |spec|
  spec.name          = "gobgp_ruby"
  spec.version       = GobgpRuby::VERSION
  spec.authors       = ["Shu Sugimoto"]
  spec.email         = ["shu@su.gimo.to"]

  spec.summary       = %q{GoBGP gRPC API for Ruby}
  spec.description   = %q{GoBGP gRPC API for Ruby}
  spec.homepage      = "https://github.com/s2ugimot/gobgp_ruby"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "grpc"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
