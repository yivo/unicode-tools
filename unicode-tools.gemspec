# encoding: utf-8
# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name            = 'unicode-tools'
  s.version         = '2.0.1'
  s.authors         = ['Yaroslav Konoplov']
  s.email           = ['eahome00@gmail.com']
  s.summary         = 'Unicode-friendly String#trim and String#squish'
  s.description     = 'Unicode-friendly String#trim and String#squish'
  s.homepage        = 'http://github.com/yivo/unicode-tools'
  s.license         = 'MIT'

  s.executables     = `git ls-files -z -- bin/*`.split("\x0").map{ |f| File.basename(f) }
  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_development_dependency 'rake',      '~> 10.0'
  s.add_development_dependency 'test-unit', '~> 3.1.8'
end
