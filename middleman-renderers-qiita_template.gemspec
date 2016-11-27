# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman/renderers/qiita_template'

Gem::Specification.new do |spec|
  spec.name          = "middleman-renderers-qiita_template"
  spec.version       = Middleman::Renderers::QiitaTemplate::VERSION
  spec.authors       = ["nownabe"]
  spec.email         = ["nownabe@gmail.com"]

  spec.summary       = %q{Qiita::Markdown for Middleman}
  spec.homepage      = "https://github.com/nownabe/middleman-renderers-qiita_template"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.2"
  spec.add_dependency "tilt", "~> 1.4.1"
  spec.add_dependency "qiita-markdown", "~> 0.16.1"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
