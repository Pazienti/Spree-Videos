Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_videos'
  s.version     = '2.1.0'
  s.summary     = 'Adds youtube videos to Spree commerce products'
  s.description = 'Add multiuple youtube videos, and a thumbnail selector' + 
                  'for those products to a Spree commerce product'
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Pazienti'
  s.email             = 'dev@pazienti.it'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1'
  s.add_dependency 'youtube_it'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'rspec-rails',  '~> 2.14.0'
  s.add_development_dependency 'ffaker', '~> 1.16'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'json', '~> 1.8.1'
  # s.add_development_dependency 'shoulda-matchers'
end
