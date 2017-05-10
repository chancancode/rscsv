# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rscsv/version'

Gem::Specification.new do |spec|
  spec.name = 'rscsv'
  spec.version = Rscsv::VERSION
  spec.authors = ['Ville Lautanala']
  spec.email = ['lautis@gmail.com']

  spec.summary = %q{Rust-powered CSV}
  spec.description   = %q{Rust-powered CSV}
  spec.homepage = 'https://github.com/lautis/rscsv'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'helix_runtime', '~> 0.6.0'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end