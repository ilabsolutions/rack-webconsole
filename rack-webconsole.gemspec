# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/webconsole/version"

Gem::Specification.new do |s|
  s.name        = "rack-webconsole"
  s.version     = Rack::Webconsole::VERSION
  s.authors     = ["Josep M. Bach", "Josep Jaume Rey", "Oriol Gual"]
  s.email       = ["info@codegram.com"]
  s.homepage    = "http://github.com/codegram/rack-webconsole"
  s.summary     = %q{Rack-based console inside your web applications}
  s.description = %q{Rack-based console inside your web applications}

  s.rubyforge_project = "rack-webconsole"

  s.add_runtime_dependency 'rack'
  s.add_runtime_dependency 'multi_json', '>= 1.0.3', '~> 1.0'
  s.add_runtime_dependency 'ripl', '~> 0.5.1'
  s.add_runtime_dependency 'ripl-multi_line', '~> 0.3.0'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'purdytest'

  # Since we can't have a git dependency in gemspec, we specify this
  # dependency directly in the Gemfile. Once a new mocha version is released,
  # we should uncomment this line and remove mocha from the Gemfile.
  # s.add_development_dependency 'mocha'

  s.add_development_dependency 'yard'
  s.add_development_dependency 'bluecloth'
  s.add_development_dependency 'rake'

  s.files         = [".gitignore", ".rvmrc", ".travis.yml", "Gemfile", "Gemfile.lock", "History", "Rakefile", "Readme.md", "lib/rack-webconsole.rb", "lib/rack/webconsole.rb", "lib/rack/webconsole/asset_helpers.rb", "lib/rack/webconsole/assets.rb", "lib/rack/webconsole/railtie.rb", "lib/rack/webconsole/repl.rb", "lib/rack/webconsole/sandbox.rb", "lib/rack/webconsole/shell.rb", "lib/rack/webconsole/version.rb", "public/jquery.html", "public/webconsole.css", "public/webconsole.html", "public/webconsole.js", "rack-webconsole.gemspec", "spec/rack/webconsole/asset_helpers_spec.rb", "spec/rack/webconsole/assets_spec.rb", "spec/rack/webconsole/repl_spec.rb", "spec/rack/webconsole/sandbox_spec.rb", "spec/rack/webconsole/shell_spec.rb", "spec/rack/webconsole_spec.rb", "spec/spec_helper.rb"]
  s.test_files    = []
  s.require_paths = ["lib"]
end
