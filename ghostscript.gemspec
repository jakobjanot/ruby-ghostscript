# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'ghostscript'
  s.version     = '9.21'
  s.summary     = 'Ghostscript Ruby Wrapper'
  s.description = 'Ruby wrapper for Ghostscript'
  s.authors       = ["Jakob Kofoed Janot"]
  s.email         = ["jakobjanot@karnovgroup.com"]

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = ">= 1.8.11"

  s.files = Dir['lib/ghostscript.rb', 'vendor/**/*']
  s.extensions = ['ext/ghostscript/extconf.rb']
end
