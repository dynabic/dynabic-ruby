$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../lib/dynabic', __FILE__))
require 'dynabic/version'

Gem::Specification.new do |s|
  s.name        = 'dynabic'
  s.version     = Dynabic::VERSION
  s.authors     = 'Dynabic'
  s.email       = 'support@dynabic.com'
  s.homepage    = 'https://github.com/dynabic/dynabic-ruby'
  s.summary     = 'Ruby SDK for Dynabic API'
  s.description = 'Ruby SDK for Dynabic API'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = %w(lib lib/dynabic)

  s.add_runtime_dependency 'addressable'
  s.add_runtime_dependency 'typhoeus'
  s.add_runtime_dependency 'ethon'
end
