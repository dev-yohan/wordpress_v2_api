Gem::Specification.new do |s|
  s.name        = 'wordpress_v2_api'
  s.version     = '0.0.0'
  s.date        = '2016-12-21'
  s.summary     = 'Wordpress V2 API wrapper'
  s.description = 'This gem encapsulates request to WP V2 API to consume and manage wordpress content in ruby'
  s.authors     = ['Yohan Morales']
  s.email       = 'yohanmorales@hotmail.com'
  s.files       =  Dir['lib/**/*.rb']
  s.add_runtime_dependency 'httparty', '~> 0.13', '>= 0.13.7'
  s.add_development_dependency 'bundler', "~> 1.5"
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.homepage    = 'http://www.rubygems.org'
  s.license     = 'MIT' 
end	