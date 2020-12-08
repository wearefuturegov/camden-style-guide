$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "camden/style_guide/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "camden-style_guide"
  spec.version     = Camden::StyleGuide::VERSION
  spec.authors     = ["Dan Garland"]
  spec.email       = ["dan@dangarland.co.uk"]
  spec.homepage    = "https://github.com/wearefuturegov/camden-style-guide"
  spec.summary     = "Camden Style Guide"
  spec.description = "A Rails Engine that encapsulates the generic style guide for Camden based apps"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.2"
  spec.add_dependency "webpacker", "~> 5"
end
