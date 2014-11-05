$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workflow_kit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name          = "workflow_kit"
  s.version       = WorkflowKit::VERSION

  s.authors       = ["Sebastian Fiedlschuster"]
  s.email         = ["sebastian@fiedlschuster.de"]
  s.homepage      = "http://github.com/fiedl/workflow_kit"  

  s.description   = "This gem provides a workflow construction kit for rails apps. " + 
    "Users can arrange workflow bricks in a sequence for each workflow and add parameters. " +
    "When a workflow is executed, each workflow brick executes a callback method written " + 
    "in ruby and passes the parameters."
  s.summary       = s.description

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.require_paths = ["lib"]

  #s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  #s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec-rails", ">= 2.8.0"
  s.add_development_dependency "guard", "1.0.1"
  s.add_development_dependency "nokogiri", ">= 1.5.0"
  s.add_development_dependency "capybara"
  s.add_development_dependency 'rspec-rails', '2.10.0'
  s.add_development_dependency 'guard-rspec', '0.5.5'

end






