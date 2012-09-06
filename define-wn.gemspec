# -*- encoding: utf-8 -*-
require File.expand_path('../lib/define-wn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "define-wn"
  gem.version       = Define-wn::VERSION
  gem.authors       = ["Robie Lutsey"]
  gem.email         = ["robie1373@gmail.com"]
  gem.description   = %q{Look up words using WordNet}
  gem.summary       = %q{Hits the www.dict.org server and uses mechanize to twiddle the form. Amazingly, this produces a definition. Eventually.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency 'rb-fsevent', '~>0.9.1'
  gem.add_development_dependency 'turn', '~>0.9.6'
  gem.add_development_dependency 'growl', '~>1.0.3'

  gem.add_dependency 'bundler', "~>1.1"
  gem.add_dependency 'rake', '~>0.9.2'
  gem.add_dependency 'mechanize', '~>2.5.1'

end
