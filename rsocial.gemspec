# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsocial'

Gem::Specification.new do |s|
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-nc"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-remote"
  s.add_development_dependency "pry-nav"
  s.add_runtime_dependency('selenium-webdriver', '~> 3.0.0.beta3.1', '>= 3.0.0.beta3.1')
  s.add_runtime_dependency('headless', '~> 2.3', '>= 2.3.1')
  s.description   = "A ruby social media stat crawler"
  s.date          = Time.now.utc.strftime("%Y-%m-%d")
  s.name          = 'rsocial'
  s.version       = RSocial::VERSION
  s.summary       = "A ruby social media stat crawler"
  s.authors       = ["Ed Richards"]
  s.email         = 'er@advect.us'
  s.require_paths = ["lib"]
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage      = 'http://www.github.com/advectus/rsocial'
  s.license       = 'MIT'
end
