lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fried/service/version"

Gem::Specification.new do |spec|
  spec.name          = "fried-service"
  spec.version       = Fried::Service::VERSION
  spec.authors       = ["Fire-Dragon-DoL"]
  spec.email         = ["francesco.belladonna@gmail.com"]

  spec.summary       = %q{Service object interface}
  spec.description   = %q{Service object interface}
  spec.homepage      = "https://github.com/Fire-Dragon-DoL/fried-service"
  spec.metadata      = {
    "source_code_uri" => "https://github.com/Fire-Dragon-DoL/fried-service"
  }

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry-byebug"

  spec.add_runtime_dependency "fried-core"
  spec.add_runtime_dependency "fried-call"
  spec.add_runtime_dependency "fried-dependency"
end
