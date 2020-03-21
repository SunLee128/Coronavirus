
require_relative 'lib/corona_virus/version'

Gem::Specification.new do |spec|
  spec.name          = "corona_virus"
  spec.version       = CoronaVirus::VERSION
  spec.authors       = ["sunlee"]
  spec.email         = ["sunlee128@gmail.com"]

  spec.summary       = 
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
