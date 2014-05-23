$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "share_buttons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "share_buttons"
  s.version     = ShareButtons::VERSION
  s.authors     = ["Valentin Ballestrino"]
  s.email       = ["vala@glyph.fr"]
  s.homepage    = "http://www.glyph.fr"
  s.summary     = "Simple social share buttons helpers for Rails."
  s.description = "Simple social share buttons helpers for Rails."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency 'zeroclipboard-rails', '~> 0.0.13'

  s.add_development_dependency "sqlite3"
end
