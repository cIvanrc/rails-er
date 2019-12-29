lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_er/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_er"
  spec.version       = RailsEr::VERSION
  spec.authors       = ["ivan"]
  spec.email         = ["c.ivan.felix.r@gmail.com"]

  spec.summary       = %q{A gem for generating a ER Diagram}
  spec.homepage      = "https://github.com/cIvanrc/rails_er"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
