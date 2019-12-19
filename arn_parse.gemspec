
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "arn_parse/version"

Gem::Specification.new do |spec|
  spec.name          = "arn_parse"
  spec.version       = ArnParse::VERSION
  spec.authors       = ["Ryan Porter"]
  spec.email         = ["rap@endymion.com"]

  spec.summary       = %q{Parse an AWS ARN and get its various sections.}
  spec.description   = %q{Based on https://gist.github.com/RulerOf/b9f5dd00a9911aba8271b57d3d269d7a}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
