Gem::Specification.new do |spec|
  spec.name          = "lita-bitcoin"
  spec.version       = "0.1.0"
  spec.authors       = ["lebrauncom"]
  spec.email         = ["lebraun.com@gmail.com"]
  spec.description   = "A Lita handler to check the current BTC/USD exchange rate"
  spec.summary       = "A Lita handler to check the current BTC/USD exchange rate. Inspired by marceldegraaf."
  spec.homepage      = "https://github.com/lebrauncom/lita-bitcoin"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
